class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.select do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def total_inventory
    inventory = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |item, amount|
        inventory[item] ||= {quantity: 0, vendors: []}
        inventory[item][:quantity] += amount
        inventory[item][:vendors] << vendor
      end
    end
    inventory
  end

  def overstocked_items
    total_inventory.select {|_, value| value[:quantity] > 50 && value[:vendors].count > 1 }.keys
  end

end
