class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat) # show
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
     # GET /flats/:id/edit
     @flat = Flat.find(params[:id])
  end

  def update
     # PATCH /flats/:id
     if @flat.update(flat_params)
        redirect_to flat_path(@flat)
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    # DELETE /flats/:id
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end


  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    # strong params
  end

end
