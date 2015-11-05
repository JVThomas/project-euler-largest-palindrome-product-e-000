# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @product = 0
  end
  def answer
    solution = 0
    999.downto(100){|i|
      i.downto(100){|j|
        @product = (i * j)
          if @product.to_s == @product.to_s.reverse && @product > solution
            solution = @product
          end
      }
    }
    solution
  end
end