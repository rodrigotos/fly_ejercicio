class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def show
    @airline = Airline.find_by(id: params[:id])
    if @airline.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def new
    @airline = Airline.new
  end

  def edit
    @airline = Airline.find_by(id: params[:id])
    if @airline.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @airline = Airline.new(airline_params)
    if @airline.save
      flash[:success] = "Airline created. Ok"
      redirect_to airlines_path
    else
      flash[:error] = "Houston we are in troubles, try it again."
      render 'new'
    end
  end

  def update
    @airline = Airline.find_by(id: params[:id])
    if @airline.update(airline_params)
      flash[:success] = "Airline created. Ok"
      redirect_to airlines_path
    else
      flash[:error] = "Houston we are in troubles, try it again."
      render 'edit'
    end
  end

  def destroy
    @airline = Airline.find_by(id: params[:id])
    if @airline.destroy
      flash[:success] = "Airline destroyed. Ok"
    else
      flash[:error] = "Houston we are in troubles, please dont hack us."
    end
    redirect_to airlines_path
  end


  private

  def airline_params
    params.require(:airline).permit(:name)
  end




end
