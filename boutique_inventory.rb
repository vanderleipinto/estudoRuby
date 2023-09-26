#https://exercism.org/tracks/ruby/exercises/boutique-inventory/edit
class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map{|item| item[:name] }.sort
  end

  def cheap
    @items.select{|item| item[:price]<30.0}
  end

  def out_of_stock
     @items.select{|item| item[:quantity_by_size] == {}}
  end

  def stock_for_item(name)
    result = @items.find {|item| item[:name]== name}
    return result[:quantity_by_size]
    
  end

  def total_stock
    total = 0
    items.map{|i| i[:quantity_by_size].each{|key,value| total+= value}}
    return total
  end

  private
  attr_reader :items
end
