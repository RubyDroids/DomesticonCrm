class BackofficeController < ApplicationController
  before_action :require_login
  layout "backoffice"
 end