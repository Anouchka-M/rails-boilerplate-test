class CreateApplications < ActiveRecord::Migration[7.0]

  def change

    create_table :applications do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.string :techno, null: false

      t.timestamps
    end
  end
end
