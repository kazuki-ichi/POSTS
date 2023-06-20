class AddscheduleMemoToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :schedule_memo, :string
  end
end
