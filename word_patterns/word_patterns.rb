def word_pattern(pattern, string)
  pattern.chars.zip(string.split).uniq.length == pattern.chars.uniq.length &&
  pattern.chars.uniq.length == string.split.uniq.length
end
