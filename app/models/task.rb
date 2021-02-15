class Task < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :title, length: { minimum: 2}

    after_create do
        puts "new task successfully created!"
    end
end
