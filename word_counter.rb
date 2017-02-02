require 'pry'

if ARGV.size > 0
  text = ARGV.first #file.open something like that
  num_of_words = ARGV.last.to_i # = something that is later used by output
else
  puts "No arguments were given."
end

def word_counter(text, num_of_words = nil)
  original_contents = []
  stripped_contents = []
  split_contents = []
  File.foreach(text) {|line| original_contents << line }
  original_contents.each do |line|
    stripped_contents << line.downcase.gsub(/[^a-z0-9\s]/i, '').strip
  end
  stripped_contents.delete_if { |line| line.empty? }
  stripped_contents.each do |line|
    split_contents << line.split
  end
  split_contents
  word_frequencies = {}
  split_contents.each do |line|
    line.each do |word|
      if word_frequencies[word].nil?
        word_frequencies[word] = 0
      end
      word_frequencies[word] += 1
    end
  end
  sorted_frequencies = word_frequencies.sort_by { |word| word.last }.reverse
  i = 0
  sorted_frequencies.each do |word|
    if i < num_of_words
      puts "'#{word[0]}' occurs #{word[1]} times."
      i += 1
    end
  end
end

word_counter(text, num_of_words)
