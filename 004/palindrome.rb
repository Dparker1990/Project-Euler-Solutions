require 'set'

def find_palindrome(n, palindromes)
  i = 100
  while i < 1000
    tmp = n * i
    palindromes.add(tmp) if tmp.to_s == tmp.to_s.reverse
    i += 1
  end
  n == 999 ? palindromes.max : find_palindrome((n+1), palindromes)
end

def main
  palindromes = Set.new
  puts find_palindrome(100, palindromes)
end

if __FILE__ == $0
  main
end
