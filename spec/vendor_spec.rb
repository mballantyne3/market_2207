require './lib/vendor'
require './lib/item'

RSpec.describe Vendor do
  let(:vendor) { Vendor.new("Rocky Mountain Fresh") }
  let(:item1) { Item.new({name: 'Peach', price: "$0.75"}) }
  let(:item2) { Item.new({name: 'Tomato', price: '$0.50'}) }

  it 'exists and has attributes' do
    expect(vendor).to be_a(Vendor)
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
  end
end
