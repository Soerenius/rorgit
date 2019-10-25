class PagesController < ApplicationController
    def home
      render params[:id]
    end
  end
