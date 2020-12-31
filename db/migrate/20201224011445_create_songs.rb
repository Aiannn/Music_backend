class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :duration
      t.string :preview
      t.string :album_pic
      t.integer :artist_deezer_id

      t.timestamps
    end
  end
end
