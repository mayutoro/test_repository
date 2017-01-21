class PortfolioController < ApplicationController
  
  before_action :set_title

  def index
  end
  
  def pf01
  end
  
  def pf02
  end
  
  def pf03
  end
  
  private
  def set_title
    titles = { "index" => "つくったもの", "pf01" => "CafeDebut", "pf02" => "WordPressデザインワークブック", "pf03" => "バッタになりたい魔法使い" }
    @page_title = titles[action_name]
  end
end
