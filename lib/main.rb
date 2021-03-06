# frozen_string_literal: true

class Main
  class << self
    def parse(input)
      input = input.to_s
      ph_regex = /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
      if input.nil? || input.length != 10 || !ph_regex.match?(input) || /0/.match?(input)
        return 'Please enter valid input'
      end

      num_map = {
        2 => %w[a b c],
        3 => %w[d e f],
        4 => %w[g h i],
        5 => %w[j k l],
        6 => %w[m n o],
        7 => %w[p q r s],
        8 => %w[t u v],
        9 => %w[w x y z]
      }
      entries = input.to_s.chars.map { |number| num_map[number.to_i] }

      words = {}
      File.foreach('./public/english-words.txt') do |line|
        words[line.length] = words.fetch(line.length, []) << line.chop.to_s.downcase
      end

      begin
        matches = match_opr(entries, words)
      rescue MatchOperation
        raise 'Operation Failed'
      end

      begin
        results = combination_opr(entries, words, matches)
      rescue CombinationOpr
        raise 'Operation Failed'
      end

      results
    end

    private

    def match_opr(entries, words)
      matches = {}
      keys = entries.length - 1

      (1..keys).to_a.each do |i|
        match1 = entries[0..i]
        next if match1.length < 3

        match2 = entries[i + 1..keys]
        next if match2.length < 3

        combination1 = match1.shift.product(*match1).map(&:join)
        next if combination1.nil?

        combination2 = match2.shift.product(*match2).map(&:join)
        s1 = (combination1 & words[i + 2])
        s2 = (combination2 & words[keys - i + 1])
        matches[i] = [s1, s2]
      end

      matches
    end

    def combination_opr(entries, words, matches)
      results = []
      matches.each do |_, combinations|
        next if combinations.first.nil? || combinations.last.nil?

        combinations.first.product(combinations.last).each do |combo_words|
          results << combo_words
        end
      end
      results << (
        entries.shift.product(*entries).map(&:join) & words[11]
      ).join(', ')
      results
    end
  end
end
