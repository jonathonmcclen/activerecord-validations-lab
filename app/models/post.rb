class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 205}
    validates :category, inclusion: { in: %w(Fiction  Non-Fiction),
        message: "%{value} is not a valid size" }

    validates_with TitleValidator
   
end
