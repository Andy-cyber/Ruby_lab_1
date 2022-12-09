# frozen_string_literal: true

require 'json'
require 'csv'

class Card
  def data
    [{
      position: '1',
      name: 'Phone 13',
      rate: '100',
      price: '399',
      direct_link: 'allo/1'
    }]
  end

  def save_to_file()
    IO.write("#{__dir__}/output/items.txt", data.join("\n"))
  end

  def save_to_json()
    File.open("#{__dir__}/output/items.json", 'w') do |f|
      f.write(JSON.pretty_generate(data))
    end
  end

  def save_to_csv()
    CSV.open("#{__dir__}/output/items.csv", 'wb') do |csv|
      csv << data.first.keys
      data.each do |hash|
        csv << hash.values
      end
    end
  end
end
