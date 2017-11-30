class CommercesController < ApplicationController

  def index
    @commerces = Commerce.search(params[:name]).
                          filter_category(params[:filter])
    #json_response(@commerces)
    render json: @commerces, include: 'categories'
  end

  def show
    @commerce = Commerce.find(params[:id])
		render json: @commerce, include: 'categories'
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  
  private

    def commerce_params
      params.require(:commerce).permit(:name, :address, :email, 
																			 :website, :logo, :rating, 
																			 { category_ids: []})
    end
end
