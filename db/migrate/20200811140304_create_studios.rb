class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.integer :instrument_id
      t.integer :artist_id


      t.timestamps
    end
  end
end
