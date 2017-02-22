class ChartsController < ApplicationController

  before_action :find_chart, only: [:show, :edit, :update, :destroy, :add]

end

private

def chart_params
  params.require(:chart).permit(:day, :type, :description)
end

def find_chart
  @chart = Chart.find(params[:id])
end
