#https://www.geeksforgeeks.org/minimum-product-subset-array/

class Minimum_product
   def initialize(arr)
     @arr = arr
     @arr_length = arr.length     
   end

   def minimum_product
      negatives = []
      zeros = 0
      arr = @arr
     return @arr[0] if @arr_length == 1

     @arr.each do |value|
      negatives << value if value.negative?
      zeros += 1 if value == 0
      
     end

      if negatives.length.odd? && zeros==0
         result = arr.reduce(1) { |p, e| p * e}
      end
      if negatives.length.even? && zeros==0
         arr.delete(negatives.min)
         result =  arr.reduce(1) { |p, e| p * e}
      end

      result = 0 if negatives.empty? && zeros!=0
      result = arr.min if negatives.empty? && zeros==0
      return result
   end
 end

 arr = [1, 1, -2, 4, 3]
 minimum =  Minimum_product.new(arr)
print minimum.minimum_product



