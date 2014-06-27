class AddEntidadToStakeholders < ActiveRecord::Migration
  def change
    add_column :stakeholders, :entidad, :string
  end
end
