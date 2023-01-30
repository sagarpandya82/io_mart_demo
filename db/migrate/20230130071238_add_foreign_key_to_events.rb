class AddForeignKeyToEvents < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.belongs_to :status, foreign_key: true
    end
  end
end
