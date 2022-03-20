# frozen_string_literal: true
require 'histogram/array' # enables Array#histogram
class ProductController < ApplicationController

  def get_min_max_asist
    minim = 99
    maxim = 0
    Product.pluck(:assists).each do |variable|
      minim = variable if variable < minim
      maxim = variable if variable > maxim
    end
  end

  frequencies = Hash.new(0)
  data = Product.pluck(:assists)
  # (bins, freqs)= data.histogram(500, :min => 2, :max => 12)
  data.each { |item| frequencies[item] += 1 }
  frequencies = frequencies.sort_by { |item, amount| amount }
  frequencies.each do |item, amount|
    puts item + " " + amount
  end
end
