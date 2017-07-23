class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all.order(:name)
  end
end
