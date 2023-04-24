=begin
  In cryptography, a Caesar cipher is one of the simplest and most widely known encryption techniques. 
  It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions
  down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 

  Goal is to receive a string, shift every letter down the alphabet shift number of times and return the changed string
  Use #each_char to access every letter
  Use #gsub! method to substitute characters
  Use #ord method to convert from a char to ascii number and use #chr to reverse
  Check if a current character is a letter. If it's not, it stays the same
  Check if adding shift to a character ascii goes out of range for letters
=end

require 'pry-byebug'

def ceasar_cipher(string, shift)
    string.each_char do |char|
        # Check if current character is an upcase letter, downcase letter or a different type of character
        if char.ord >= 65 && char.ord <= 90
            # Check if a shifted ascii character is out of bounds
            if char.ord + shift > 90
                string.sub!(char, (char.ord + shift - 26).chr)
            else 
                string.sub!(char, (char.ord + shift).chr)
            end
        elsif char.ord >= 97 && char.ord <= 122
            # Check if a shifted ascii character is out of bounds
            if char.ord + shift > 122
                string.sub!(char, (char.ord + shift - 26).chr)
            else
                string.sub!(char, (char.ord + shift).chr)
            end
        end
    end

    puts string
end

ceasar_cipher("What a string!", 5)