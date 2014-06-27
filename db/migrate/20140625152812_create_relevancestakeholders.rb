class CreateRelevancestakeholders < ActiveRecord::Migration
  def change
    create_table :relevancestakeholders do |t|
      t.string :stakeholder_id
      t.string :relevance_id

      t.timestamps
    end
  end
end
