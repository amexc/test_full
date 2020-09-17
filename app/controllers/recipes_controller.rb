class RecipesController < ApplicationController
  # TODO: Implement

  def index
  end

  def search
    recipe_filter = params[:cuisine].present? ? "recipes.cuisione like '#{params[:cuisine]}'" : ""
    ingredient = params[:ingredient].present? ? "ingredients.name like '#{params[:ingredient]}'" : ""
    ##
    @result = []
    if recipe_filter.present? or ingredient.present?
      @result =   Recipe..joins(:ingredient).where( receip_filter + ingredient )
    else
      @result = Recipe.all
    end
    ##

    respond_to do |format|
       format.html {redirect_to result_recipes_path(@result)}
    end


  end

  def result
    @result
  end


end
