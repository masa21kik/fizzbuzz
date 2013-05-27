# -*- mode: ruby; coding: utf-8 -*-

require 'simplecov'
require 'coveralls'
Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter 'spec'
  add_filter 'vendor'
end

require File.dirname(__FILE__) + "/../lib/fizz_buzz"
