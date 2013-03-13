class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :leader_id, :tutor_id
      t.boolean :is_pay, :is_leader
      t.decimal :pay_money
      t.string :telphone
      t.timestamps
    end
  end
end
