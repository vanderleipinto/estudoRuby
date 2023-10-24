# https://exercism.org/tracks/ruby/exercises/list-ops/edit
class ListOps
  @list = []
  def self.arrays(arr)
    arr.length
  end
  
  def self.reverser(arr)
    arr.reverse
  end

  def self.concatter(arr, arr2)
    arr.concat(arr2)
  end

  def self.mapper(arr)
    arr.map{ |n| n + 1 }
  end

  
  def self.filterer(list, &block)
    return list if list.empty?
    list.select(&block)    
  end

  def self.sum_reducer(arr)
    arr.sum
  end

  def self.factorial_reducer(arr)
    result = 1
      arr.each do |n|
        result *= n
      end
    result
  end
end
