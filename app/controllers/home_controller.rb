class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections  = Section.all
    if params[:section_id]
      @section = @sections.find params[:section_id].to_i
      @food_items = @section.food_items
    elsif
      @food_items = FoodItem.all
    end
  end
end
