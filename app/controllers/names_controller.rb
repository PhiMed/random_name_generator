class NamesController < ApplicationController
  def welcome

  end

  def index
    @name = Name.all
  end
end
