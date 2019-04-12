class AddRatingToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :rating, :integer
  end
end
