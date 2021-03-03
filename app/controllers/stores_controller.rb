class StoresController < ApplicationController
  def index
    @reports=Report.all .order("created_at DESC")
  end

  def new
    @report=Report.new
  end

  def create
    @report=Report.new(report_params)
    if @report.save
      redirect_to root_path
    end
  end

  def show
    @report=Report.find(params[:id])
  end

  private
  def report_params
    params.require(:report).permit(:title, :image, :good_point,:detail).merge(user_id:1)
  end
end
