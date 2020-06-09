module ModelName
  extend ActiveSupport::Concern

  included do
    before_action :model_class, only: [:index, :show]
  end

  private
    def model_class
      @model_class = controller_path.classify.constantize
    end
end