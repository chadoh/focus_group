class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.text :notes
      t.belongs_to :category
      t.belongs_to :engineer_type

      t.timestamps
    end
  end

  def self.down
    drop_table :responses
  end
end
