class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :characteristics,dependent: :destroy
    belongs_to :category
    has_many :wains,dependent: :destroy
   
    validates :body, :length => { :maximum => 610 }
   
end
