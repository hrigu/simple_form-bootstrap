class SimpleObjectsController < ApplicationController
  # GET /articles
  # GET /articles.json
  def index
    render text: "index"
  end


  # GET /articles/new
  # GET /articles/new.json
  def new
    @simple = SimpleObject.new
  end

  # POST /articles
  # POST /articles.json
  def create
    @simple = SimpleObject.new(params[:simple_object])
    if @simple.save
      render text: "saved"
    else
      render "new"
    end
  end
end
