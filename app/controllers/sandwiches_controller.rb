class SandwichesController < ApplicationController
  before_action :set_sandwich, only: [:show, :edit, :update, :destroy]

  def new
    @sandwich = Sandwich.new
  end

  def edit
  end

  def create
    @sandwich = Sandwich.new(sandwich_params)

    respond_to do |format|
      if @sandwich.save
        format.html { redirect_to @sandwich, notice: 'Sandwich was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @sandwich.update(sandwich_params)
        format.html { redirect_to @sandwich, notice: 'Sandwich was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @sandwich.destroy
    respond_to do |format|
      format.html { redirect_to sandwiches_url, notice: 'Sandwich was successfully destroyed.' }
    end
  end

  private
    def set_sandwich
      @sandwich = Sandwich.find(params[:id])
    end

    def sandwich_params
      params.require(:sandwich).permit(:title, :description, :main_image, :price)
    end
end
