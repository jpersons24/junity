class AddColumnToArtists < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :age, :integer
    add_column :artists, :bio, :text
  end
end
