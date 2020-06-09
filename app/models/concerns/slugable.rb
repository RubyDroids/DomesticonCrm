module Slugable
  extend ActiveSupport::Concern
  extend ActiveModel::Naming

  included do
    before_save :update_slug
  end

  private
    def update_slug
      self.slug = self.to_param
    end
end