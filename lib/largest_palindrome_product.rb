# Implement your procedural solution here!
def largest_palindrome_product
  answer = 0
  999.downto(100){|i|
    i.downto(100){|j|
      product = (i * j)
        if product.to_s == product.to_s.reverse && product > answer
          answer = product
        end
    }
  }
  answer
end