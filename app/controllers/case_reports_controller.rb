# app/controllers/case_reports_controller.rb

class CaseReportsController < ApplicationController
  before_action :set_case_report, only: [:show]

  # GET /case_reports
  def index
    @case_reports = CaseReport
                    .by_texts(params[:texts])
                    .by_pair(params[:pair])
                    .by_disease(params[:disease])
                    .by_primary_site(params[:primary_site])
                    .by_tumor_type_final(params[:tumor_type_final])
                    .by_inferred_sex(params[:inferred_sex])
                    .order(:tumor_type_final)
                    .paginate(page: params[:page], per_page: params[:per_page])
    render json: @case_reports
  end

  # GET /case_reports/1
  def show
    render json: @case_report
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_case_report
    @case_report = CaseReport.find(params[:id])
  end
end
