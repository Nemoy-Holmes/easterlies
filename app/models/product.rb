class Product < ApplicationRecord
  has_many :comments
  validates :title, presence: true

      def self.search(search_term)
            if Rails.env.production?
              Product.where("title ilike ?", "%#{search_term}%")
            else
              Product.where("title LIKE ?", "%#{search_term}%")
            end
      end   
end
