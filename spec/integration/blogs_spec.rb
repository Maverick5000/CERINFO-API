require 'swagger_helper'

describe 'CERINFO API' do


  path '/libros' do

    get 'Muestra todos los libros' do
      tags 'Libro'
      produces 'application/json', 'application/xml'


      response '200', 'libros encontrados' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            titulo_libro: { type: :string },
            tomo_libro: { type: :string },
            area_libro: { type: :string },
            edicion_libro: { type: :string },
            ano_libro: { type: :string },
            lugar_publicacion_libro: { type: :string },
            ano_publicacion_libro: { type: :string },
            nombre_autor: { type: :string },
            nombre_genero: { type: :string },
            significado_idioma: { type: :string },
            significado_material: { type: :string },
            localidad_sigtop: { type: :string },
            dewey_sigtop: { type: :string },
            cuter_sigtop: { type: :string },
            nombre_editorial: { type: :string }
          },
          required: [  ]

        let(:id) {  }
        run_test!
      end

      response '404', 'libros no encontrados' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end
  end

  path '/libros/{id}' do

    get 'Busca un libro' do
      tags 'Libro'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'libro encontrado' do
        schema type: :object,
        properties: {
          id: { type: :integer },
          titulo_libro: { type: :string },
          tomo_libro: { type: :string },
          area_libro: { type: :string },
          edicion_libro: { type: :string },
          ano_libro: { type: :string },
          lugar_publicacion_libro: { type: :string },
          ano_publicacion_libro: { type: :string },
          nombre_autor: { type: :string },
          nombre_genero: { type: :string },
          significado_idioma: { type: :string },
          significado_material: { type: :string },
          localidad_sigtop: { type: :string },
          dewey_sigtop: { type: :string },
          cuter_sigtop: { type: :string },
          nombre_editorial: { type: :string }
        },
          required: [  ]

        let(:id) {  }
        run_test!
      end

      response '404', 'libro no encontrado' do
        let(:id) { 'invalid' }
        run_test!
      end

      response '406', 'unsupported accept header' do
        let(:'Accept') { 'application/foo' }
        run_test!
      end
    end
  end

  path '/libros' do

    post 'Crea un libro' do
      tags 'Libro'
      consumes 'application/json', 'application/xml'
      parameter name: :libro, in: :body, schema: {
        type: :object,
        properties: {
          titulo_libro: { type: :string },
          tomo_libro: { type: :string },
          area_libro: { type: :string },
          edicion_libro: { type: :string },
          ano_libro: { type: :string },
          lugar_publicacion_libro: { type: :string },
          ano_publicacion_libro: { type: :string },
          autor: { type: :integer },
          genero: { type: :integer },
          idioma: { type: :integer },
          material: { type: :integer },
          sigtop: { type: :integer },
          editorial: { type: :integer }
        },
        required: [ 'titulo_libro', 'tomo_libro', 'area_libro', 'edicion_libro', 'ano_libro', 'lugar_publicacion_libro', 'ano_publicacion_libro', 'autor', 'genero', 'idioma', 'material', 'sigtop', 'editorial' ]
      }

      response '201', 'libro creado' do
        let(:libro) { { title: 'foo', content: 'bar' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:libro) { { title: 'foo' } }
        run_test!
      end
    end
  end

    path '/libros/{id}' do

        delete 'Elimina un libro' do
          tags 'Libro'
          produces 'application/json', 'application/xml'
          parameter name: :id, :in => :path, :type => :string
    
          response '200', 'libro eliminado' do
            schema type: :object,
              properties: {
                
              },
              required: [  ]
    
            let(:id) { Libro.delete(title: 'foo', content: 'bar').id }
            run_test!
          end
    
          response '404', 'libro no eliminado' do
            let(:id) { 'invalid' }
            run_test!
          end
    
          response '406', 'unsupported accept header' do
            let(:'Accept') { 'application/foo' }
            run_test!
          end
        end
    end

    path '/libros/{id}' do

        patch 'Edita un libro' do
          tags 'Libro'
          produces 'application/json', 'application/xml'
          parameter name: :libro, in: :body, schema: {
            type: :object,
            properties: {
              id: { type: :integer },
              titulo_libro: { type: :string },
              tomo_libro: { type: :string },
              area_libro: { type: :string },
              edicion_libro: { type: :string },
              ano_libro: { type: :string },
              lugar_publicacion_libro: { type: :string },
              ano_publicacion_libro: { type: :string },
              autor_id: { type: :integer },
              genero_id: { type: :integer },
              idioma_id: { type: :integer },
              material_id: { type: :integer },
              sigtop_id: { type: :integer },
              editorial_id: { type: :integer }
            },
            required: [ 'titulo_libro', 'tomo_libro', 'area_libro', 'edicion_libro', 'ano_libro', 'lugar_publicacion_libro', 'ano_publicacion_libro', 'autor_id', 'genero_id', 'idioma_id', 'material_id', 'sigtop_id', 'editorial_id' ]
          }
    
          response '200', 'libro editado' do
            schema type: :object,
              properties: {
        
              },
              required: [  ]
    
            let(:id) { Libro.update(title: 'foo', content: 'bar').id }
            run_test!
          end
    
          response '404', 'libro no editado' do
            let(:id) { 'invalid' }
            run_test!
          end
    
          response '406', 'unsupported accept header' do
            let(:'Accept') { 'application/foo' }
            run_test!
          end
        end
      end
    
end