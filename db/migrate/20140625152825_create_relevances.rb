class CreateRelevances < ActiveRecord::Migration
  def change
    create_table :relevances do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
