# frozen_string_literal: true

require "json"

require_relative "turkish_plates/version"

module TurkishPlates
  def self.load_data
    @data = JSON.parse(File.read("#{__dir__}/turkish_plates/data/plates.json"))
  end

  def self.data
    @data ||= load_data
  end
end

puts "Loaded #{TurkishPlates.data.size} plates"