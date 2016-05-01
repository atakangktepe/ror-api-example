class DrinksController < ApplicationController
  def index
    # Will have template
    @drinks = Drink.all
  end

  def show
    # Will have template
  end

  def new # Display the for new record
    # Will have template
    @drink = Drink.new
  end

  def create # Save new record
    # Will save and redirect
    @drink = Drink.new(allowed_params)

    if @drink.save
      redirect_to drinks_path
    else
      render 'new'
    end
  end

  def edit # Display form for existing record
    # Will have template
    @drink = Drink.find(params[:id])
  end

  def update # Save changes
    # Will save and redirect
  end

  def destroy
    # Will destroy and redirect
  end

  private
    def allowed_params
      params.require(:drink).permit(:name, :size)
    end
end
