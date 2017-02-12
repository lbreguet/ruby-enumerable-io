# frozen_string_literal: true
require_relative '../lib/pets.rb'

pets = Pets.new.all

p pets.count

cats = pets.select { |pet| pet.kind == 'cat' }
p "total number of cats is #{cats.count}"

older_cats = cats.select { |cat| cat.age > 10 }
p "total number of older cats are #{older_cats.count}"

sorted_by_age = cats.sort_by(&:age)
p "the youngest cat is #{sorted_by_age.first.age} years old"
