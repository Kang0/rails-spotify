class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :album, foreign_key: true
      t.datetime :created_at
    end
  end
end
