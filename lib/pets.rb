# frozen_string_literal: true
require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :all
  def initialize
    @all = []
    CSV.foreach(
      'data/pets.csv',
      headers: true,
      header_converters: :symbol
    ) do |pet|
      @all << Pet.new(pet.to_hash)
    end
  end
end
