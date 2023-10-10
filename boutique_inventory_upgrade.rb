#https://exercism.org/tracks/ruby/exercises/boutique-inventory-improvements/edit
class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map{|i| OpenStruct.new(i)}    
  end

  def item_names
    items.map { |item| item.name }.sort

    
  end

  def total_stock
    sum = 0;    
    items.map{|items| items.quantity_by_size.each{|key,value| sum+=value}}
    sum    
  end
end
