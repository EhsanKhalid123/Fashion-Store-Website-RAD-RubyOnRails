class MenController < ApplicationController
  def clothing
    @count = Product::PRODUCTS.values.filter.count { |product| saved_list.include? product[:id] }
  end
end
