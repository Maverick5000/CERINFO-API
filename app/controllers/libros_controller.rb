class LibrosController < ApplicationController
  before_action :set_libro, only: [:show, :update, :destroy]

  # GET /libros
  def index
    #@libros = Libro.all
    skip_before_filter :verify_authenticity_token, :only => [:update]
    @libros = Libro.joins(:autor, :genero, :idioma, :material, :sigtop, :editorial).select("libros.id, titulo_libro, tomo_libro, area_libro, edicion_libro, ano_libro, lugar_publicacion_libro, ano_publicacion_libro, nombre_autor, nombre_genero, significado_idioma, significado_material, localidad_sigtop, dewey_sigtop, cuter_sigtop, nombre_editorial")


    render json: @libros
  end

  # GET /libros/1
  def show
    @libro = Libro.joins(:autor, :genero, :idioma, :material, :sigtop, :editorial).where("libros.id = ?",params[:id]).select("libros.id, titulo_libro, tomo_libro, area_libro, edicion_libro, ano_libro, lugar_publicacion_libro, ano_publicacion_libro, nombre_autor, nombre_genero, significado_idioma, significado_material, localidad_sigtop, dewey_sigtop, cuter_sigtop, nombre_editorial")
    
    render json: @libro
  end

  # POST /libros
  def create
    @libro = Libro.new(libro_params)

    if @libro.save
      render json: @libro, status: :created, location: @libro
    else
      render json: @libro.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /libros/1
  def update
    if @libro.update(libro_params)
      render json: @libro
    else
      render json: @libro.errors, status: :unprocessable_entity
    end
  end

  # DELETE /libros/1
  def destroy
    @libro.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libro
      @libro = Libro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def libro_params
      params.fetch(:libro, {}).permit(:titulo_libro, :tomo_libro, :area_libro, :edicion_libro, :ano_libro, :lugar_publicacion_libro, :ano_publicacion_libro,:autor_id, :genero_id, :idioma_id, :material_id, :sigtop_id, :editorial_id)
    end
end
