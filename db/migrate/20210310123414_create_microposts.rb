class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    create_table :microposts do |t|
      t.string :content

      t.timestamps
    end
    add_reference :microposts, :user
  end
end