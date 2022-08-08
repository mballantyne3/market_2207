class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
  end

  def potential_revenue
    total_revenue = 0
    @inventory.sum do |item, amount|
      total_revenue += item.price * amount
    end
    total_revenue
  end
end
