class Notice < ActiveRecord::Base
    validates :title, presence: true
    validates :image, presence: true
    # 投稿の際の画像のサイズをバリデーション
    validates :image, file_size: {maximum: 1.megabytes.to_i} # 最大1MBに制限
    
    validate :check_number_of_notice
    
    mount_uploader :image, ImagesUploader
    
    def check_number_of_notice
      if Notice.count > 9
        errors.add(:Notice, "行数OVER")
      end
    end
 
end
