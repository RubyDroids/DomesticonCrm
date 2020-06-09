module ImagesMany
  extend ActiveSupport::Concern

  included do
    has_many_attached :images
  end

  def featured_image
    if self.images.count > 0
      return self.images.first
    else
      return false
    end
  end
end