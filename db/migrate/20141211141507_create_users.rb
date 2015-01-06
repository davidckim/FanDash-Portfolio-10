class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :encrypted_password
      t.string :full_name
      t.string :football_team
      t.string :baseball_team
      t.string :hockey_team
      t.string :basketball_team

      t.timestamps
    end
  end
end
