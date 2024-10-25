class Idea < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates_presence_of :name
  mount_uploader :picture, PictureUploader
  validates :name, presence: { message: "can't be empty, please enter a name." }
end
