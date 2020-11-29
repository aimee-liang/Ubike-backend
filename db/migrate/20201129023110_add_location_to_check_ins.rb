class AddLocationToCheckIns < ActiveRecord::Migration[6.0]
  def change
    add_column :check_ins, :location, :string
  end
end
