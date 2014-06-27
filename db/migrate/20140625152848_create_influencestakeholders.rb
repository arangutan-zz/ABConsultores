class CreateInfluencestakeholders < ActiveRecord::Migration
  def change
    create_table :influencestakeholders do |t|
      t.string :stakeholder_id
      t.string :influence_id

      t.timestamps
    end
  end
end
