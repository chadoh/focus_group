class CreateEngineerTypes < ActiveRecord::Migration
  def self.up
    create_table :engineer_types do |t|
      t.integer :level
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :engineer_types
  end
end
