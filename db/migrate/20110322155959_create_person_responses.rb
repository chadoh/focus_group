class CreatePersonResponses < ActiveRecord::Migration
  def self.up
    create_table :person_responses do |t|
      t.belongs_to :person
      t.belongs_to :response

      t.timestamps
    end
  end

  def self.down
    drop_table :person_responses
  end
end
