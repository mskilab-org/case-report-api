# app/controllers/case_reports_filters_controller.rb

class CaseReportsFiltersController < ApplicationController
  # GET /case_reports_filters
  def index
    case_reports_filters = begin
      CaseReport.select(params[:filter]).distinct.order(params[:filter]).map do |x|
        x.send(params[:filter])
      end
    rescue StandardError
      []
    end
    render json: { filter: params[:filter], records: case_reports_filters }
  end
end
