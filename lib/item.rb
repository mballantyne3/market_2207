class Item
  attr_reader :name, :price

  def initialize(params)
    @name = params[:name]
    @price = params[:price][1..].to_f
  end
end
