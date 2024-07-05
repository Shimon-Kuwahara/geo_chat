class AddUnreadToChats < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :unread, :boolean, default:true, null:false
  end
end
