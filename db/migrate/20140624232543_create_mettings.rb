class CreateMettings < ActiveRecord::Migration
  def change
    create_table :mettings do |t|
      t.string :tema
      t.date :fecha
      t.string :asistentes
      t.string :resumen
      t.string :stakeholder_id

      t.timestamps
    end
  end
end
