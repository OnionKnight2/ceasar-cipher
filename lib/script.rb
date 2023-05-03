=begin
  In cryptography, a Caesar cipher is one of the simplest and most widely known encryption techniques. 
  It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions
  down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 

  Goal is to receive a string, shift every letter down the alphabet shift number of times and return the changed string
  Build hashes containing every downcase and upcase letter with their shifted letter
  Use each.with_index.to_h to convert a range to hash and then merge those hashes
  Replace default values with shifted characters with wrapping from z to a
  Use #ord to find ascii value and #chr to return it to character
  Convert string to array
  Go through every character and replace it it's string
  Convert array back to string
=end

require 'pry-byebug'

MIN_DOWNCASE = 97
MAX_DOWNCASE = 122
MIN_UPCASE = 65
MAX_UPCASE = 90
SHIFT_VALUE = 26


def replace_default_letters(letters_hash, shift, max_ascii)
    letters_hash.map do |key, value|
        if key.ord + shift > max_ascii
            letters_hash[key] = (key.ord + shift - SHIFT_VALUE).chr
        else
            letters_hash[key] = (key.ord + shift).chr
        end
    end
end

def ceasar_cipher(string, shift)
    string_array = string.split("");
    downcase_letters = ("a".."z").each.with_index.to_h
    upcase_letters = ("A".."Z").each.with_index.to_h
    
    replace_default_letters(downcase_letters, shift, MAX_DOWNCASE)
    replace_default_letters(upcase_letters, shift, MAX_UPCASE)

    # Checking if the character is upcase or downcase
    string_array.each_with_index do |character, index| 
        if character.ord >= MIN_DOWNCASE && character.ord <= MAX_DOWNCASE
            string_array[index] = downcase_letters[character]
        elsif character.ord >= MIN_UPCASE && character.ord <= MAX_UPCASE
            string_array[index] = upcase_letters[character]
        end
    end

    string_array.join('')
end
