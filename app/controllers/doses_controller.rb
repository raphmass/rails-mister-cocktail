class DosesController < ApplicationController

  def new
  	@cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
  	@dose = Dose.create(dose_params)
  	redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:desciption, :cocktail_id, :ingredient_id)
  end

end
