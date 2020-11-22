class AddBikeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bike, :text
  end
end
