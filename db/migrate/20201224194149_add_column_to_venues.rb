class AddColumnToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :img_url, :string
  end
end
