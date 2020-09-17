class RecipesController < ApplicationController
  # TODO: Implement

  def index
  end

  def search
    recipe_filter = params[:cuisine].present? ? "recipes.cuisine like '%#{params[:cuisine]}%'" : ""
    ingredient = params[:ingredient].present? ? "ingredients.name like '%#{params[:ingredient]}%'" : ""
    ##
    @result = []
    if recipe_filter.present? or ingredient.present?
      @result =   Recipe.joins(:ingredients).where( recipe_filter + ingredient)
                      .distinct
    else
      @result = Recipe.all
    end
    ##

    render :result, assigns: {result: @result}


  end

  def result
    @result
  end


end
