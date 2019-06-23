class MultasController < ApplicationController
  before_action :set_multa, only: [:show, :update, :destroy]

  # GET /multa
  def index
    @multa = Multa.all

    render json: @multa.to_json(:include => [:libro, :usuario])
  end

  # GET /multa/1
  def show
    render json: @multa
  end

  # GET user/multas
  def multasUser
    @multas = Multa.where("usuario_id = ?",params[:usuario_id])
    if @multas.empty?
      @res = {"Respuesta": false}
      render :status =>404, json: @res
    else
      render :status =>200, json: @multas.to_json(:include => :libro)
    end
  end

  # POST /multa
  def create
    @multa = Multa.new(multa_params)

    if @multa.save
      render json: @multa, status: :created
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
    def set_multa
      @multa = Multa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def multa_params
      params.fetch(:multa, {}).permit(:usuario_id, :libro_id, :estado_multa, :detalle_multa, :monto_multa)
    end
end
