class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.integer :weight
      t.datetime :start_timestamp
      t.datetime :end_timestamp
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
