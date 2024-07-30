#!/usr/bin/env ruby
require "rubygems"
require "thor"

class Generator < Thor::Group
  include Thor::Actions
  argument :number, type: :numeric, desc: "The problem number"

  class << self
    def source_root
      File.expand_path(File.dirname(File.dirname(__FILE__)))
    end
  end

  def add_problem_file
    template('templates/problem.tt', "problems/#{number}/solution.rb")
  end

  def add_problem_readme
    create_file "problems/#{number}/README.md"
  end

  def add_spec_file
    template("templates/spec.tt", "spec/problems/#{number}/solution_spec.rb")
  end
end

class Leetcode < Thor
  include Thor::Actions

  class << self
    def source_root
      File.expand_path(File.dirname(File.dirname(__FILE__)))
    end

    def exit_on_failure?
      true
    end
  end

  register(Generator, "generate", "generate", "Generate a Leetcode problem")

  desc "test", "Run tests for a given problem"
  method_option :number, type: :numeric, aliases: "-n", required: false, description: "The problem number to test"
  method_option :on_file_change, type: :boolean, aliases: "-o", default: false, description: "Run the tests on file changes"
  def test
    dir_name = options[:number].nil? ? nil : "#{self.class.source_root}/spec/#{options[:number]}"

    if options[:on_file_change]
      run("bundle exec guard -c", verbose: false)
    else
      run("bundle exec rspec #{dir_name}", verbose: false)
    end
  end
end

Leetcode.start
