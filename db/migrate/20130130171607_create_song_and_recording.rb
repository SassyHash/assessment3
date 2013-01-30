class CreateSongAndRecording < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :author_id
    end

    create_table :recordings do |t|
      t.integer :song_id
      t.integer :band_id
    end
  end

end
