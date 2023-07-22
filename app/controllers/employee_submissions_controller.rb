class EmployeeSubmissionsController < ApplicationController
  def new
    @employee_submission = EmployeeSubmission.new
  end

  def create
    @employee_submission = EmployeeSubmission.new(employee_submission_params)

    if @employee_submission.save
      redirect_to employee_submissions_path, notice: 'Submission was successfully created.'
    else
      render :new
    end
  end

  def index
    @submissions = EmployeeSubmission.all

    @submissions = @submissions.by_name(params[:name])
                             .by_employee_id(params[:employee_id])
                             .by_department(params[:department])
                             .by_employment_status(params[:employment_status])
                             .by_email(params[:email])
                             .by_accommodation_requests(params[:accommodation_requests])
  end

  private

  def employee_submission_params
    params.require(:employee_submission).permit(:name, :employee_id, :department, :employment_status, :email, :accommodation_requests, :file_upload)
  end
end

