class SavedListsController < ApplicationController
  def update
    saved_list = Set.new(session[:saved_list])
    if params[:deselect]
      saved_list.delete(params[:id])
    else
      saved_list.add(params[:id])
    end

    session[:saved_list] = saved_list
    redirect_to home_path
  end

  def show
    saved_list = Set.new(session[:saved_list])

    @saved_products = saved_list.map { |product_id| Product::PRODUCTS[product_id] }
  end
end
