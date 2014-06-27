class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre_comercial
      t.string :razon_social
      t.string :nit
      t.string :representante_legal
      t.string :nombre_contacto
      t.string :email_contacto
      t.string :telefono_contacto
      t.string :direccion_contacto
      t.string :ciudad
      t.string :pais
      t.string :pagina_web
      t.string :imagen

      t.timestamps
    end
  end
end
