=begin
  In cryptography, a Caesar cipher is one of the simplest and most widely known encryption techniques. 
  It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions
  down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 

  Goal is to receive a string, shift every letter down the alphabet shift number of times and return the changed string
  Use #ord method to convert from a char to ascii number and use #chr to reverse
=end

require 'pry-byebug'

def ceasar_cipher(string, shift)
    puts (string.ord + shift).chr
end

ceasar_cipher("h", 5)