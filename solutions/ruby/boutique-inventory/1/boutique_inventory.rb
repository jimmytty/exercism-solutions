class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.select { |item| item[:name] == name }
             .map { |item| item[:quantity_by_size]  }[0]
  end

  def total_stock
    @items.map { |item| item[:quantity_by_size].map {|_,v| v }}.flatten.sum
  end

  private
  attr_reader :items
end
