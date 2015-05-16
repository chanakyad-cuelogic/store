require 'minitest_helper'

describe "Products integration" do
  it "shows product's name" do
    product = Product.create!(name: 'Chanakya')
    visit product_path(product)
    page.text.must_include "Chanakya"
  end
end
