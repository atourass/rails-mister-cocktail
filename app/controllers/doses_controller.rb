class DosesController < ApplicationController

    def create
      @cocktail = Cocktail.find(params[:id])
      @dose = Dose.new(dose_params)
      @dose.cocktail = @cocktail


      if @dose.save
        redirect_to cocktail_path(@cocktail.id)
      else
        render 'cocktails/show'
      end
    end

    def destroy
      @dose = Dose.find(params[:id])
      @dose.destroy
      redirect_to cocktails_path
    end

    private

    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end
end
