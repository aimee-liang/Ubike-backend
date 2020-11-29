class AddDateTimeToCheckIns < ActiveRecord::Migration[6.0]
  def change
    add_column :check_ins, :datetime, :string
  end
end
