# frozen_string_literal: true

class Item
  ATTRS = %i[position name rate price direct_link].freeze
  attr_accessor(*ATTRS)

  def initialize(attributes)
    setup_attributes(attributes)
  end

  # for puts method
  def to_s
    output_string = ''
    to_h.each do |key, value|
      output_string += "#{key.to_s}: #{value.to_s} \n"
    end
    puts [output_string, '-------------'].join("\n")
    [output_string, '-------------'].join("\n")
  end

  # preparing hash from data
  def to_h
    output_hash = {}

    ATTRS.each do |attr|
      output_hash[attr] = send(attr)
    end

    puts output_hash
    output_hash
  end

  private

  def setup_attributes(attributes)
    ATTRS.each do |attr|
      send("#{attr}=", attributes[attr])
    end
  end
end
