class PostImage < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :post_comments, dependent: :destroy

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      imaage.attach(io: File.open(file_path), filename: 'default-image.jpg', contente_type: 'image/jpeg')
    else
      image
    end
  end

end
