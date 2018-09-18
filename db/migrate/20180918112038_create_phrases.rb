class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :body
      t.integer :episode_id

      t.timestamps
    end
  end
end
