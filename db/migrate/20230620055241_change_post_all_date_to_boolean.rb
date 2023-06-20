class ChangePostAllDateToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :all_date, :boolean
  end
end
