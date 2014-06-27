class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
