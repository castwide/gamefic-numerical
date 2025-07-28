# frozen_string_literal: true

require 'gamefic'
require 'numbers_in_words'
require_relative 'numerical/version'

module Gamefic
  module Query
    class Numerical < Integer
      def filter(_subject, token)
        words = token.keywords
        numericals = []
        while (word = words.shift)
          compressed = NumbersInWords.in_numbers(word, only_compress: true)
          if compressed == []
            words.unshift(word)
            break
          end

          numericals.push word
        end
        return super if numericals.empty?

        Result.new(NumbersInWords.in_numbers(numericals.join(' ')), words.join(''))
      end
    end
  end

  module Scriptable
    module Queries
      def numerical
        Query::Numerical.new name: 'numerical'
      end
    end
  end
end
