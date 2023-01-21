class CreateFavoriteJokes < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_jokes do |t|
      t.string :value
      t.string :icon_url
      t.string :joke_id
      t.string :url

      t.timestamps
    end
  end
end
