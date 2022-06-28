class RomanNumerals
  UNITS = { 'I' => 1, 'X' => 10, 'C'  => 100, 'M' => 1000 }
  IRREGULARS = { 'IV' => 4, 'IX' => 9, 'XL' => 40, 'XC' => 90, 'CD' => 400, 'CM' => 900 }
  FIFTHS = { 'V' => 5, 'L' => 50, 'D'=> 500 }

  ROMAN_SYMBOLS = IRREGULARS.merge(UNITS).merge(FIFTHS)
  ROMAN_DIGITS_REGEX = /IV|IX|XL|XC|CD|CM|V|I|L|X|D|C|M/

  def self.to_roman decimal
    number_chars = "#{decimal}".chars

    number_chars.each_with_index.reduce([]) do |roman_string, (number, index)|
      if number != '0'
        current_base = 10 ** (number_chars.length - index - 1)
        base_symbol = ROMAN_SYMBOLS.index(number.to_i * current_base)
      
        if base_symbol
          roman_string.append base_symbol
        else
          roman_string.append FIFTHS.index(5 * current_base) if number > '5'
          roman_string.append UNITS.key(current_base) * (number.to_i % 5)
        end
      end

      roman_string
    end.join
  end
  
  def self.from_roman roman_number
    roman_number.scan(ROMAN_DIGITS_REGEX).map.with_index do |roman_digit, i|
      ROMAN_SYMBOLS[roman_digit] ||
        (ROMAN_SYMBOLS[roman_digit[0]] * roman_digit.length)
    end.reduce(&:+)
  end
end
