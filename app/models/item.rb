class Item < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { large: "100x100>", medium: "100x100>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
