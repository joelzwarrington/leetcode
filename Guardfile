guard :rspec, cmd: "bundle exec rspec" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^problems/(.+)\.rb$}) { |m| "spec/problems/#{m[1]}_spec.rb" }
  watch("spec/spec_helper.rb") { "spec" }
end
