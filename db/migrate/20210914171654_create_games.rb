class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :year
      t.string :developer
      t.string :cover_art_url

      t.timestamps
    end
  end
end
