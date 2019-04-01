class MultaController < ApplicationController
  before_action :set_multum, only: [:show, :update, :destroy]

  # GET /multa
  def index
    @multa = Multum.all

    render json: @multa
  end

  # GET /multa/1
  def show
    render json: @multum
  end

  # POST /multa
  def create
    @multum = Multum.new(multum_params)

    if @multum.save
      render json: @multum, status: :created, location: @multum
    else
      render json: @multum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /multa/1
  def update
    if @multum.update(multum_params)
      render json: @multum
    else
      render json: @multum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /multa/1
  def destroy
    @multum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multum
      @multum = Multum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def multum_params
      params.fetch(:multum, {})
    end
end
