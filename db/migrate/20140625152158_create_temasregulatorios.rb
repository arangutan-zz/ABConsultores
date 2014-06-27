class CreateTemasregulatorios < ActiveRecord::Migration
  def change
    create_table :temasregulatorios do |t|
      t.string :titulo
      t.text :resumen
      t.string :imagen
      t.string :stakeholder_id

      t.timestamps
    end
  end
end
