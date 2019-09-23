class ChangeDataTitleToPlan2 < ActiveRecord::Migration[5.2]
  def change
    change_column :contents, :time, :time
  end
end
