class HumanResourcesController < ApplicationController
  def index
    @submissions = EmployeeSubmission.all
  end
end
