class ApplicationController < ActionController::API
  def employees
    render json: {
      employees: Employee.all.map do |employee|
        {
          name: employee.name
        }
      end
    }
  end

  def dashboard
    render json: {
      total_employees: Employee.count
    }
  end
end
