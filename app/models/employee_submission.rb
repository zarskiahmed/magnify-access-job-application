class EmployeeSubmission < ApplicationRecord
    validates :name, presence: true
    validates :employee_id, presence: true
    validates :department, presence: true
    validates :email, presence: true
    validates :employment_status, inclusion: { in: ["Full-time", "Part-time", "Contractor", "Intern", "Laid-Off", "Retired", "Employed"], allow_blank: true }
    validate :validate_employment_status_inclusion
    validates :accommodation_requests, presence: true
    has_one_attached :file_upload
    validate :file_upload_presence
  
    def file_upload_presence
      if file_upload.attached? == false
        errors.add(:file_upload, "must be attached")
      end
    end

    def validate_employment_status_inclusion
        unless employment_status.blank? || ["Full-time", "Part-time", "Contractor", "Intern", "Laid-Off", "Retired", "Employed"].include?(employment_status)
          errors.add(:employment_status, "must include a valid status (e.g., Full-time, Part-time, Contractor, Intern, Laid-Off, Retired, Employed)")
        end
    end

    submissions = EmployeeSubmission.all

    submissions.each do |submission|
        puts "Name: #{submission.name}, Employee ID: #{submission.employee_id}, Email: #{submission.email}, Department: #{submission.department}, Employment Status: #{submission.employment_status}, Accommodation Requests: #{submission.accommodation_requests}, File Name: #{submission.file_upload}"
    end
end