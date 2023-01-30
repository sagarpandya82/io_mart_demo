class AddForeignKeyToComments < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.belongs_to :event, foreign_key: true
    end
  end
end
