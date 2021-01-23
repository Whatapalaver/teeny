class AddUserToLinks < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :user
  end
end
