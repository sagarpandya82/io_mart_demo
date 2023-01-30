class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.string :update_event_status

      t.timestamps
    end
  end
end
