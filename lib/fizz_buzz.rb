# -*- mode: ruby; coding: utf-8 -*-

class FizzBuzz
  def say(number)
    word = ''
    word << 'fizz' if number % 3 == 0
    word << 'buzz' if number % 5 == 0
    return word.empty? ? number.to_s : word
  end
end
