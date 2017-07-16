module ApplicationHelper

  def alert_for(flash_type)  
    { success: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-warning',
      notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end 

  def profile_avatar_select(user)  
    return image_tag user.avatar.url(:medium),
                   id: 'image-preview',
                   class: 'img-responsive img-circle profile-image' if user.avatar.exists?
    image_tag 'default-avatar.png', id: 'image-preview',
                                  class: 'img-responsive img-circle profile-image'
  end

  def index_avatar_select(user)  
    return image_tag user.avatar.url(:medium),
                   id: 'image-index',
                   height: '60', width: '60', class: 'img-circle' if user.avatar.exists?
    image_tag 'default-avatar.png', id: 'image-index',
                                  height: '60', width: '60'
  end
    
end
