def caeser_cipher(string, shift)
  new_str = string.split("").map do |letter|
    if shift > 26 || shift < -26
      shift = shift % 26
    end

    if letter.match?(/[A-Za-z]/)
      check_upper = letter
      letter = letter.ord
      letter = letter + shift

      if letter < 65 && check_upper == check_upper.upcase
        letter += 26
      elsif letter > 90 && check_upper == check_upper.upcase
        letter -= 26
      end
    
      if letter < 97 && check_upper == check_upper.downcase
        letter += 26
      elsif letter > 122 && check_upper == check_upper.downcase
        letter -= 26
      end

      letter = letter.chr
    end
      letter
  end
  puts new_str.join
end

caeser_cipher("What a string!", -5)