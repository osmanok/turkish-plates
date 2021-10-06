# frozen_string_literal: true

require "json"
require_relative "turkish_plates/version"

module TurkishPlates
  def self.load_data
    @data = JSON.parse(File.read("#{__dir__}/turkish_plates/data/plates.json"))
  end

  def self.find_city_by_plate(plate)
    TurkishPlates.load_data.fetch(plate)
  end

  def self.find_plate_by_city(city)
    city = city.upcase

    TurkishPlates.load_data.key(city)
  end
end

