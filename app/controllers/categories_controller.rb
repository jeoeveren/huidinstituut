class CategoriesController < ApplicationController
  def index
    @categories = Category.order('categories.show_order DESC').all
  end
end
