def caesar_cipher(text, value)
  responseArray = Array.new()

  text.strip().split("").each do |char|
    numberASCII = char.ord + value

    if char.ord < 97          # if is an uppercase char
      if numberASCII.ord <= 90 # if can switch without return to the beginning of the alphabet
        newChar = numberASCII.chr

      else
        newChar = ("A".ord + (numberASCII - 91)).chr
      end

    else                        # if is a downcase char
      if numberASCII.ord <= 122 # if can switch without return to the beginning of the alphabet
        newChar = numberASCII.chr

      else
        newChar = ("a".ord + (numberASCII - 123)).chr
      end
    end

    responseArray.push(newChar)
  end

  puts responseArray.join()
end

# Questions #
print "Type your string: "
text = gets.chomp

print "Enter the number of characters to be skipped for substitution: "
value = gets.chomp.to_i

caesar_cipher(text, value)
