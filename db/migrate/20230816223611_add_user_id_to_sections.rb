class AddUserIdToSections < ActiveRecord::Migration[7.0]
  def change
     add_reference :sections, :user
  end
end
