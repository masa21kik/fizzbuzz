# -*- mode: ruby; coding: utf-8 -*-
require File.dirname(__FILE__) + "/../spec_helper"

describe FizzBuzz do
  let(:fb) { FizzBuzz.new }

  context 'when input is not a multiple of 3 or 5' do
    it 'says number' do
      [1, 2, 4, 101].each do |number|
        fb.say(number).should == number.to_s
      end
    end
  end

  context 'when input is a multiple of 3' do
    it 'says fizz' do
      [3, 6, 9, 33, 99].each do |number|
        fb.say(number).should == 'fizz'
      end
    end
  end

  context 'when input is a multiple of 5' do
    it 'says buzz' do
      [5, 10, 20, 35, 100].each do |number|
        fb.say(number).should == 'buzz'
      end
    end
  end

  context 'when input is a multiple of 3 and 5' do
    it 'says fizzbuzz' do
      [15, 30, 150, 225, 315].each do |number|
        fb.say(number).should == 'fizzbuzz'
      end
    end
  end
end

