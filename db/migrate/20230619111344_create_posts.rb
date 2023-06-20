class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :all_date
      t.datetime :update_time
      t.timestamps
    end
  end
end
