class AddHabilitadoToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :fecha_vencimiento, :date
    add_column :empresas, :habilidato, :boolean
  end
end
