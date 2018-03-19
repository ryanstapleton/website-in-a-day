class SidesController < ApplicationController
  before_action :set_side, only: [:show, :edit, :update, :destroy]

  def new
    @side = Side.new
  end

  def edit
  end

  def create
    @side = Side.new(side_params)

    respond_to do |format|
      if @side.save
        format.html { redirect_to @side, notice: 'Side was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @side.update(side_params)
        format.html { redirect_to @side, notice: 'Side was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @side.destroy
    respond_to do |format|
      format.html { redirect_to sides_url, notice: 'Side was successfully destroyed.' }
    end
  end

  private
    def set_side
      @side = Side.find(params[:id])
    end

    def side_params
      params.require(:side).permit(:title, :description, :size, :main_image, :price)
    end
end
