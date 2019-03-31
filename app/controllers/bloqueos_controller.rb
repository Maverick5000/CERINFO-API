class BloqueosController < ApplicationController
  before_action :set_bloqueo, only: [:show, :update, :destroy]

  # GET /bloqueos
  def index
    @bloqueos = Bloqueo.all

    render json: @bloqueos
  end

  # GET /bloqueos/1
  def show
    render json: @bloqueo
  end

  # POST /bloqueos
  def create
    @bloqueo = Bloqueo.new(bloqueo_params)

    if @bloqueo.save
      render json: @bloqueo, status: :created, location: @bloqueo
    else
      render json: @bloqueo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bloqueos/1
  def update
    if @bloqueo.update(bloqueo_params)
      render json: @bloqueo
    else
      render json: @bloqueo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bloqueos/1
  def destroy
    @bloqueo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloqueo
      @bloqueo = Bloqueo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bloqueo_params
      params.fetch(:bloqueo, {})
    end
end
