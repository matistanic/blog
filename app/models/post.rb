class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :delete_wrong_word
    def delete_wrong_word
        str="spoiler"
        if self.content.include?("spoiler")
            self.content = self.content.gsub("spoiler", "")
            self.content = self.content.gsub("Spoiler", "")
        end
    end
end
