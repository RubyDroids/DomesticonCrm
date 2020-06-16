Rails.application.routes.draw do
  get 'dashboards/main'


  constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
    root to: "backoffice/dashboards#index", as: :admin_root
  end  

  constraints Clearance::Constraints::SignedIn.new do
    root to: "dashboards#main", as: :signed_in_root
  end  

  # constraints Clearance::Constraints::SignedOut.new do
  #   root to: "pages#index"
  # end

  #resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :users

  root to: "pages#index"
  
  # Admins section
  namespace :backoffice do
    #root to: 'dashboards#index'
  end # end of :backoffice routes  
end
