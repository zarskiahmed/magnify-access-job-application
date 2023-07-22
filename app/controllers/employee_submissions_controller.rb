class EmployeeSubmissionsController < ApplicationController
  def new
    @employee_submission = EmployeeSubmission.new
  end

  def create
    @employee_submission = EmployeeSubmission.new(employee_submission_params)

    if @employee_submission.save
      redirect_to root_path, notice: 'Submission was successfully created.'
    else
      render :new
    end
  end

  def index
    @submissions = EmployeeSubmission.all
  end

  private

  def employee_submission_params
    params.require(:employee_submission).permit(:name, :employee_id, :department, :employment_status, :email, :accommodation_requests, :file_upload)
  end
end

