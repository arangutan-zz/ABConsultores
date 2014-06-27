class RemoveStakehlderToCompromises < ActiveRecord::Migration
  def change
    remove_column :compromises, :stakehlder_id, :string
    add_column :compromises, :stakeholder_id, :integer
  end
end
