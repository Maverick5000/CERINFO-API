class PrestamosController < ApplicationController
  before_action :set_prestamo, only: [:show, :update, :destroy]

  # GET /prestamos
  def index
    @prestamos = Prestamo.all

    render json: @prestamos
  end

  # GET /prestamos/1
  def show
    render json: @prestamo
  end

  # POST /prestamos
  def create
    @prestamo = Prestamo.new(prestamo_params)

    if @prestamo.save
      render json: @prestamo, status: :created, location: @prestamo
    else
      render json: @prestamo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prestamos/1
  def update
    if @prestamo.update(prestamo_params)
      render json: @prestamo
    else
      render json: @prestamo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prestamos/1
  def destroy
    @prestamo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestamo
      @prestamo = Prestamo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prestamo_params
      params.fetch(:prestamo, {})
    end
end
