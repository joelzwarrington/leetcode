# Leetcode

A [Leetcode](https://leetcode) solution repository using [Ruby](https://www.ruby-lang.org/en/) & [RSpec](http://rspec.info/).

## Getting started

```shell
$ bundle install
```

## Generating a new problem

```shell
$ bin/leetcode.rb generate {PROBLEM_NUMBER}
```

## Testing problems

- To test an individual problem once:

```shell
$ bin/leetcode.rb test -n {PROBLEM_NUMBER}
```

- To run all tests:

```shell
$ bin/leetcode.rb test
```

- To test on file modifications:

```shell
$ bin/leetcode.rb test -o
```
