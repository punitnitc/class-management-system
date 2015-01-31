class CreateTeachsubs < ActiveRecord::Migration
  def self.up
    create_table :teachsubs do |t|
      t.string :teacher_id
      t.string :subcode

      t.timestamps
    end
  end

  def self.down
    drop_table :teachsubs
  end
end
