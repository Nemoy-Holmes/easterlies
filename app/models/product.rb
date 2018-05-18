class Product < ApplicationRecord
    def self.search(search_term)
        if Rails.env.production?
          Product.where("title ilike ?", "%#{search_term}%")
        else
          Product.where("title LIKE ?", "%#{search_term}%")
        end
       end   
end
