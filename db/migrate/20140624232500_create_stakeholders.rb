class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.string :imagen
      t.string :nombre
      t.string :apellido
      t.string :empresa
      t.string :cargo
      t.string :movimiento_politico
      t.string :pais
      t.string :departamento
      t.string :ciudad
      t.string :impacto
      t.string :perfil
      t.string :disposicion
      t.string :expectativas
      t.string :dimension
      t.string :dependencia
      t.string :necesidades_logro
      t.string :necesidades_poder
      t.string :necesidades_afiliacion
      t.string :empresa_id

      t.timestamps
    end
  end
end
