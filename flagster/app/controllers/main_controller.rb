require 'flags/flag'

class MainController < ApplicationController

  def index
  end

  def choose
    @countries = Flag.all.map { |f| f.name }
  end

  def random
  end

  def cluster
    countries = Flag.where name: params.keys
    @countries = countries.map { |f| f.name }
  end

end
