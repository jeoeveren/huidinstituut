class LabelsController < ApplicationController
#before_action :set_offset, only: [:index]
  before_action :set_offset, except: [:jeroentje]

  def index
    @labels = Label.all.limit(@limit).offset((@page*@limit)-@limit+1)
  end

    def sort_name
      @labels = Label.sort_name
      render action: :index
    end

    def sort_show_order
      @labels = Label.sort_show_order
      render action: :index
    end

    def sort_visible
      @labels = Label.sort_visible
      render action: :index
    end

  def jeroentje
    # Receive data from index form en get params
    # params are passed as strings!
    @page = params[:page].to_i
    @pages = params[:pages].to_i
    @limit = params[:limit].to_i
    @action = params[:action]
    @labels = Label.sort_name.limit(@limit).offset((@page*@limit)-@limit+1)
    render action: :index
  end


  private

  def set_offset
    @total = Label.all.count
    @limit = 10
    @pages = (@total/@limit)+1
    @page = 1
  end

end
