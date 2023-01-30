class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :content
      t.datetime :scheduled
      t.boolean :resolved?, null: false, default: false
      t.datetime :resolved_time

      t.timestamps
    end
  end
end
