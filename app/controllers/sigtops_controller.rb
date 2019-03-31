class SigtopsController < ApplicationController
  before_action :set_sigtop, only: [:show, :update, :destroy]

  # GET /sigtops
  def index
    @sigtops = Sigtop.all

    render json: @sigtops
  end

  # GET /sigtops/1
  def show
    render json: @sigtop
  end

  # POST /sigtops
  def create
    @sigtop = Sigtop.new(sigtop_params)

    if @sigtop.save
      render json: @sigtop, status: :created, location: @sigtop
    else
      render json: @sigtop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sigtops/1
  def update
    if @sigtop.update(sigtop_params)
      render json: @sigtop
    else
      render json: @sigtop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sigtops/1
  def destroy
    @sigtop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sigtop
      @sigtop = Sigtop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sigtop_params
      params.fetch(:sigtop, {})
    end
end
