class LabelsController < ApplicationController
  def index
    @labels = Label.all.order(:name)
  end
end
