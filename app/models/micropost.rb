class Micropost < ActiveRecord::Base
  has_attached_file :content, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/system/missing/:style/missing.jpg"
  validates_attachment :content, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
    size: { less_than: 5.megabytes }
end
