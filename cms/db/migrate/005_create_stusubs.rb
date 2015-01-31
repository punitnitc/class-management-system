class CreateStusubs < ActiveRecord::Migration
  def self.up
    create_table :stusubs do |t|
      t.string :subcode
      t.string :rollno
      t.integer :absent

      t.timestamps
    end
  end

  def self.down
    drop_table :stusubs
  end
end
