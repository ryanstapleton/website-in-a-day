class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]

  def new
    @price = Price.new
  end

  def edit
  end

  def create
    @price = Price.new(price_params)

    respond_to do |format|
      if @price.save
        format.html { redirect_to @price, notice: 'Price was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to @price, notice: 'Price was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @price.destroy
    respond_to do |format|
      format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
    end
  end

  private
    def set_price
      @price = Price.find(params[:id])
    end

    def price_params
      params.require(:price).permit(:size, :price)
    end
end
