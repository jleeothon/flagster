require 'flags/flagnode'

class MainController < ApplicationController

  def index
  end

  def choose
    @countries = Flag::all
  end

  def random
  end

  def random_cluster
    centroids = Flag::all.sample(params[:number].to_i).map.with_object({}) do |f, h|
      h[f.name.to_sym] = "on"
    end
    redirect_to action: :cluster, **centroids
  end

  def cluster
    centroids = Flag::where(name: params.keys).map do |centroid|
      FlagNode::new centroid
    end
    flags = Flag::all.map do |flag|
      FlagNode::new flag
    end
    algorithm = Carmenere::KMeans::Algorithm::new(centroids, flags) do |cluster|
      FlagNode::mean(cluster)
    end
    @clusters = algorithm.run.values
  end

end
