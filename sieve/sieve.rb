# A prime number is a natural number that has exactly two distinct natural 
# number divisors: 1 and itself.

# Create a list of consecutive integers from 2 through n: (2, 3, 4, ..., n).
# Initially, let p equal 2, the smallest prime number.
# Enumerate the multiples of p by counting to n from 2p in increments of p, 
# and mark them in the list (these will be 2p, 3p, 4p, ... ; the p itself 
# should not be marked).
# Find the first number greater than p in the list that is not marked. 
# If there was no such number, stop. Otherwise, let p now equal this 
# new number (which is the next prime), and repeat from step 3.
class Sieve
  def initialize(limit = 2)
    @limit = limit.to_i
  end

  def primes
    numbers = (2..@limit).to_a
    prime = 2
    while prime != nil
      numbers.select! { |num| num == prime || num % prime != 0 }
      prime = numbers[(numbers.index(prime)) + 1]
    end
    numbers
  end
end

# numbers = Sieve.new(100)
# p numbers.primes