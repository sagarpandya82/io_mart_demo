class ChangeResolvedColumnNameinEvent < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :events, :resolved?, :resolved
  end

  def self.down
    #
  end
end
