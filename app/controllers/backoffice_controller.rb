class BackofficeController < ApplicationController
  before_action :require_login, except: [:new, :create]
  #layout "backoffice"
 end