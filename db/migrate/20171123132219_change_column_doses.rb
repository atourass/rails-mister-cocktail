class ChangeColumnDoses < ActiveRecord::Migration[5.0]
  def change
     rename_column :doses, :content, :description
  end
end
