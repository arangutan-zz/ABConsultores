class RemoveEmpresaToStakeholder < ActiveRecord::Migration
  def change
    remove_column :stakeholders, :empresa, :string
  end
end
