class PassangerController < ApplicationController
  def new
  end

  def create
    redirect_to root_path
  end
end
