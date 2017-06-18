class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections  = Section.all
    @sort_type = 0
    if params[:section_id]
      @section = @sections.find params[:section_id].to_i
      @food_items = @section.food_items
    elsif
      @food_items = FoodItem.all
    end
    @sort_type = params[:sort_type] ? params[:sort_type].to_i : 0
    if @sort_type == 0
      @food_items = @food_items.order('name ASC')
    elsif @sort_type == 1
      @food_items = @food_items.order('price ASC')
    elsif @sort_type == 2
      @food_items = @food_items.order('price DESC')
    end
  end
end
