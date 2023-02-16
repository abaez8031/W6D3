class Round2 < ActiveRecord::Migration[7.0]
  def change

  end

  remove_column :users, :email

end
