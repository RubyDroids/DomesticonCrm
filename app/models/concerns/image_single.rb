module ImageSingle
  extend ActiveSupport::Concern

  included do
    has_one_attached :image
  end
end