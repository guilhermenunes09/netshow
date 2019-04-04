class CreateVideoStats < ActiveRecord::Migration[5.2]
  def change
    create_table :video_stats do |t|
      t.integer :views
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
