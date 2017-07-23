class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_navbar_items

  def set_navbar_items
    @navbar_categories = Category.all.order(:show_order, :name)
    @navbar_products = Product.all.order(:show_order, :name)
  end

end
