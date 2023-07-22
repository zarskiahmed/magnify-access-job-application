# Submission Form
The Submission Form is a Ruby on Rails application that allows employees to submit information, including identification details, accommodation requests, and file uploads. The application stores the submission information in a database and provides a lookup form for Human Resources to review and filter the submissions.

# Features
* Identification Information: Employees can fill out their name, ID, department, employment status, and email in the submission form.
* Accommodation Requests: Employees can provide specific accommodation requests in a text area.
* File Upload: Employees can attach supporting documentation using file upload.
* Database Storage: Submission form information is stored in the database for later review.
* Lookup Form: Human Resources can use the lookup form to view and filter submissions based on various fields.

# Getting Started
Follow these instructions to set up and run the Submission Form application locally.

## Prerequisites
* Ruby Version: Make sure you have Ruby installed on your system (version 3.0.2) **ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux-gnu]**
* System dependencies:
``` 
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7', '>= 6.1.7.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
```

* Database Creation: ```rails db:create```

* Database initialization: **Default SQLite3**

* Deployment instructions: ```rails s```

## Installation
1. Clone the repository to your local machine:
```git clone https://github.com/zarskiahmed/magnify-access-job-application.git```

2. Install the required gems:
```bundle install```

3. Set up the database:
```
rails db:create
rails db:migrate
```

## Usage
1. Start the Rails server:
```rails server```
2. Open your web browser and visit ```http://localhost:3000``` to access the Submission Form.
3. Employees can fill out the form, including their identification details, accommodation requests, and file upload. Upon submission, the data will be saved in the database.
4. Human Resources can access the lookup form at ```http://localhost:3000/employee_submissions``` to review and filter submissions.

# How It Works
## Model: EmployeeSubmission
The EmployeeSubmission model represents an individual submission made by an employee. It includes the following attributes:
* name: Employee's name
* employee_id: Employee's unique identifier
* department: Employee's department
* employment_status: Employee's employment status (must be one of: "Full-time", "Part-time", "Contractor", "Intern", "Laid-Off", "Retired", "Employed").
* email: Employee's email address
* accommodation_requests: Accommodation requests provided by the employee
* file_upload: File attachment related to the submission.

## Controller: EmployeeSubmissionsController
The EmployeeSubmissionsController handles the form submissions and lookup requests. It includes the following actions:
* new: Renders the submission form for employees to fill out.
* create: Handles form submissions, validates the data, and stores the submission in the database.
* index: Retrieves all submissions for the lookup form.

## Views
* employee_submissions/new.html.erb: Contains the HTML form for employee submissions.
* employee_submissions/index.html.erb: Displays the lookup form to review and filter submissions.

## Validations
The EmployeeSubmission model includes various validations to ensure the data is consistent and complete:
* Presence validations for name, employee_id, email, accommodation_requests, and file_upload.
* Inclusion validation for employment_status, allowing only specific values.
* Custom validation file_upload_presence to check if a file is attached.

##  Contribution
Contributions to the Submission Form project are welcome! If you find any issues or want to add new features, please create a pull request or submit an issue.

