class Post < ApplicationRecord
    def self.find_title_like(chars)
        self.where('title ILIKE ?', "%#{chars}%")
    end

    def self.like(attribute, chars)
        self.where("#{attribute} LIKE ?", "#{chars}")
    end
end
