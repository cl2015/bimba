class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :passwd, :user_name
      t.timestamps

    end
    User.create_user('geniusfox','zhimakaimen')
  end
end
