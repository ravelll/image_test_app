class AddTookDateToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :took_date, :datetime
  end
end
