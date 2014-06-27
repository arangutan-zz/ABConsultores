class AddEntityToStakeholder < ActiveRecord::Migration
  def change
    add_column :stakeholders, :entity_id, :string
  end
end
