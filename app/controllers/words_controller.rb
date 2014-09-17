class WordsController < ApplicationController
  before_action :render_layout_if_html
  before_action :get_params, only: [:create]

  respond_to :json, :html

  def index
    respond_with (@words = Word.all)
    # @words = Word.all
    # render json: @words
  end

  def create
    respond_with Word.create(get_params)
  end

  def show
  end

  private

  def find_word
    params[:id]
  end

  def get_params
    params.require(:word).permit(:name, :description)
  end

  def render_layout_if_html
    if request.format.symbol == :html
      render "layouts/application"
    end
  end

end
