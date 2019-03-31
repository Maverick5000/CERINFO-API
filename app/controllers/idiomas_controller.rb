class IdiomasController < ApplicationController
  before_action :set_idioma, only: [:show, :update, :destroy]

  # GET /idiomas
  def index
    @idiomas = Idioma.all

    render json: @idiomas
  end

  # GET /idiomas/1
  def show
    render json: @idioma
  end

  # POST /idiomas
  def create
    @idioma = Idioma.new(idioma_params)

    if @idioma.save
      render json: @idioma, status: :created, location: @idioma
    else
      render json: @idioma.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /idiomas/1
  def update
    if @idioma.update(idioma_params)
      render json: @idioma
    else
      render json: @idioma.errors, status: :unprocessable_entity
    end
  end

  # DELETE /idiomas/1
  def destroy
    @idioma.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idioma
      @idioma = Idioma.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def idioma_params
      params.fetch(:idioma, {})
    end
end
