class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :update, :destroy]

  # GET /solicituds
  def index
    @solicituds = Solicitud.all

    render :status =>200, json: @solicituds.to_json(:include => [:libro, :usuario])
  end

  # GET /solicituds/1
  def show
    render :status =>200, json: @solicitud.to_json(:include => [:libro, :usuario])
  end

  # POST /solicituds
  def create
    @solicitud = Solicitud.new(solicitud_params)

    if @solicitud.save
      render :status =>200, json: @solicitud.to_json(:include => [:libro, :usuario])
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicituds/1
  def update
    if @solicitud.update(solicitud_params)
      render json: @solicitud
    else
      render json: @solicitud.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicituds/1
  def destroy
    @solicitud.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_params
      params.require(:solicitud).permit(:usuario_id, :libro_id)
    end
end
