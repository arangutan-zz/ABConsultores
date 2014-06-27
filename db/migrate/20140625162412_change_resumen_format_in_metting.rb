class ChangeResumenFormatInMetting < ActiveRecord::Migration
  def change
  	change_column :mettings, :resumen, :text
  end
end
