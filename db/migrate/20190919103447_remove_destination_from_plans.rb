class RemoveDestinationFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :destination, :string
  end
end
