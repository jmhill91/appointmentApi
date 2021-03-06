class EmployeesController < ApplicationController


	def index
		employees = Employee.all 
		render json: EmployeeSerializer.new(employees)
	end



	private 

	def employee_payload(employee)
   	 { employee_id: employee.id }
  	end 

  	def current_user
   		 Employee.find(decoded_token[0]["employee_id"])
  	end



end
