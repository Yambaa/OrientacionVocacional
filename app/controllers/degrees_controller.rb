class DegreesController < ApplicationController
  def index
    @degrees = Degree.all
  end

  def new
    @degree = Degree.new
  end

  def create
    @degree = Degree.new(degree_params)
    if @degree.save
      redirect_to degree_path(@degree)
    else
      render :new
    end
  end

  def edit
    @degree = Degree.find(params[:id])
  end

  def update
    @degree = Degree.find(params[:id])
    if @degree.update_attributes(degree_params)
      redirect_to degree_path(@degree)
    else
      render :edit
    end
  end

  def show
    @degree = Degree.find(params[:id])
  end

  def destroy
    @degree = Degree.find(params[:id])
    if @degree.destroy
      redirect_to degrees_path
    else
      redirect_to degrees_path
    end
  end

  private

    def degree_params
      params.require(:degree).permit(:id, :name, :description)
    end
end
