class ChangeEmpresaIdFormatInStakeholder < ActiveRecord::Migration
  def change
  	change_column :stakeholders, :empresa_id, :integer
  end
end
