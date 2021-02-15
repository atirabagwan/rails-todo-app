class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :tasks, dependent: :destroy

    # validates :name, :email, presence: true
    # validates :email, format: { with: /\A\w[\w.-]+@\w+\.\w+\z/ }
    # validates :name, length: { minimum: 2 }

    # before_validation :normalize_name

    after_create do
        puts "new user successfully created!"
    end

    private

    # def normalize_name
    #     self.name = name.downcase.titleize
    # end

end
