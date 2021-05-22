class SavedListsController < ApplicationController
  def update
    saved_list = Set.new(session[:saved_list])
    if params[:deselect]
      saved_list.delete(params[:id])
    else
      saved_list.add(params[:id])
    end

    session[:saved_list] = saved_list

    case params[:redirect_to]&.to_sym
    when :main_page
      redirect_to home_path
    when :saved_list
      redirect_to saved_list_path
    when :men
      redirect_to men_path
    when :women
      redirect_to women_path
    when :kids
      redirect_to kids_path
    when :newins
      redirect_to new_path
    when :see
      redirect_to seeAll_url
    else
      redirect_to home_path
    end
  end

  def show
    saved_list = Set.new(session[:saved_list])

    @saved_products = saved_list.map { |product_id| Product::PRODUCTS[product_id] }

    @count = Product::PRODUCTS.values.filter.count { |product| saved_list.include? product[:id] }

  end
end
