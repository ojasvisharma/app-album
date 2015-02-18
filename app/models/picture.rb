class Picture < ActiveRecord::Base
belongs_to :user
belongs_to :album
has_attached_file :avatar
validates_attachment_presence :avatar
validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
end
