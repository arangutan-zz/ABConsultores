class RemoveCorreoElectronicoToUser < ActiveRecord::Migration
  def change
  	remove_column :users, :correo_electronico, :string
  end
end
