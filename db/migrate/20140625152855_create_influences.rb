class CreateInfluences < ActiveRecord::Migration
  def change
    create_table :influences do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
