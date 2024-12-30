class RecipesController < ApplicationController

  def index
  end

  def search
    @recipes = 
              if params[:cuisine].present? || params[:ingredient].present?
                 Recipe.includes(:ingredients).where("cuisine ILIKE ? OR ingredients.name ILIKE ? ", "#{params[:cuisine]}", "#{params[:ingredient]}").references(:recipe_id)
              else
                Recipe.all
              end
  end
end
