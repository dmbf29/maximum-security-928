class ConvictionsController < ApplicationController
  before_action :set_criminal, only: [:new, :create]
  def new
    @conviction = Conviction.new
    # @crimes = Crime.order(name: :asc)
    # @crimes = @criminal.crimes
    @crimes = Crime.where.not(id: @criminal.crimes).order(name: :asc)
  end

  def create
    @conviction = Conviction.new(conviction_params)
    @conviction.criminal = @criminal
    if @conviction.save
      redirect_to prison_path(@criminal.prison)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def conviction_params
    params.require(:conviction).permit(:crime_id)
  end

  def set_criminal
    @criminal = Criminal.find(params[:criminal_id])
  end

end
