class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.boolean :resolved?, null: false, default: true

      t.timestamps
    end
  end
end
