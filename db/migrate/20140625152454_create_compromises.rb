class CreateCompromises < ActiveRecord::Migration
  def change
    create_table :compromises do |t|
      t.date :fecha_inicial
      t.string :correo
      t.date :fecha_limite
      t.string :compromisos
      t.string :stakehlder_id

      t.timestamps
    end
  end
end
