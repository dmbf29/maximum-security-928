class CriminalsController < ApplicationController
  def new
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new # for the form
  end

  def create
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new(criminal_params)
    @criminal.prison = @prison
    if @criminal.save
      redirect_to prison_path(@prison)
    else
      # showing the new.html.erb form if it doesnt save
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @criminal = Criminal.find(params[:id])
    @criminal.destroy
    redirect_to prison_path(@criminal.prison), status: :see_other
  end

  private

  def criminal_params
    params.require(:criminal).permit(:name, :photo)
  end
end
