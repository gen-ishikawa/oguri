class Notice < ActiveRecord::Base
    validates :title, presence: true
    mount_uploader :image, ImagesUploader
end
