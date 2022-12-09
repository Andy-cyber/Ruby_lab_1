# frozen_string_literal: true

require_relative 'item'
require_relative 'cart'

item = Item.new({
  position: '1',
  name: 'Phone 13',
  rate: '100',
  price: '399',
  direct_link: 'allo/1'
})
card = Cart.new()

item.to_s
item.to_h

card.save_to_file
card.save_to_json
card.save_to_csv
