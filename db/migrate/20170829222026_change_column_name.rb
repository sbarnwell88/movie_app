class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :favorites, :movie_id, :film_id
  end
end
