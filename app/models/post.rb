class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  scope :of_followed_users, -> (following_users) { where user_id: following_users }
  has_many :comments, dependent: :destroy 
  validates :user_id, presence: true
  has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc",
                    styles: { :preview => ["725x1200>", :jpg], :thumb => ["100x140>", :jpg] },
                    processors: [:ghostscript]
  validates :file_avatar, presence: true

  validates_attachment_content_type :file_avatar, :content_type => ["application/pdf"]
  validates :caption, presence: true, length: { minimum: 4, maximum: 300 }
end
