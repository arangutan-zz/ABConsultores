class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :tema
      t.string :informacion
      t.string :imagen
      t.string :stakeholder_id

      t.timestamps
    end
  end
end
