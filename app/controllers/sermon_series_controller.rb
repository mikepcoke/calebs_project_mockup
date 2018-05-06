class SermonSeriesController < ApplicationController

  def show
    @sermon_series = SermonSeries.find(params[:id])
  end
end
