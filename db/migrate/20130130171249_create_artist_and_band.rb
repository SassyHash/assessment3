class CreateArtistAndBand < ActiveRecord::Migration
 
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.integer :band_id
    end

    create_table :bands do |t|
      t.string :band_name
    end    
  end
end
