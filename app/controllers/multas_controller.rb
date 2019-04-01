class MultasController < ApplicationController
  before_action :set_Multa, only: [:show, :update, :destroy]

  # GET /multa
  def index
    @multa = Multa.all

    render json: @multa
  end

  # GET /multa/1
  def show
    render json: @multa
  end

  # POST /multa
  def create
    @multa = Multa.new(Multa_params)

    if @multa.save
      render json: @multa, status: :created, location: @multa
    else
      render json: @multa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /multa/1
  def update
    if @multa.update(Multa_params)
      render json: @multa
    else
      render json: @multa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /multa/1
  def destroy
    @multa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Multa
      @multa = Multa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def Multa_params
      params.fetch(:Multa, {})
    end
end