

def minimum_product(arr)
  zeros = 0
  negatives = []
  arr.each do |value,index|
    negatives << value if value.negative?
    zero +=1 if value == 0
  end
  if negatives.length.even && zeros==0
    arr.delete(negatives.max)
    return arr.reduce(1) { |p, e| p * e}
  end

  if negatives.length.odd && zeros==0    
    return arr.reduce(1) { |p, e| p * e}
  end
  


end
 




