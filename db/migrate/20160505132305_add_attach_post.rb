class AddAttachPost < ActiveRecord::Migration
    def self.up
     add_attachment :posts, :file_avatar  
    end

   def self.down
     remove_attachment :posts, :file_avatar
   end
end
