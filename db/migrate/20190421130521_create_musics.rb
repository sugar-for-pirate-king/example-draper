class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :author
      t.string :download_url

      t.timestamps
    end
  end
end
