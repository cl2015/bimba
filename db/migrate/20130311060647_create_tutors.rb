class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.column :name, :string, :null => false
      t.timestamps
    end
  end
end
