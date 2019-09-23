class ChangeDataTitleToPlan < ActiveRecord::Migration[5.2]
  def change
    change_column :contents, :time, :string
  end
end
