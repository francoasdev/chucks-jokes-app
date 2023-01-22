class AddReferencesToFavoriteJokes < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorite_jokes, :user, null: false, foreign_key: true
  end
end
