class RenameUserFromUsenameToNickname < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :username, :nickname
  end
end
