class Notice < ActiveRecord::Base
    validates :title, presence: true
    # 投稿の際の画像のサイズをバリデーション
    validates :image, file_size: {maximum: 1.megabytes.to_i} # 最大1MBに制限
    mount_uploader :image, ImagesUploader
end
