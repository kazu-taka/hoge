class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   before_action :authenticate_user!, except: [:index, :show]
   before_action :set_post,only: [:show, :edit, :update, :destroy]
end
