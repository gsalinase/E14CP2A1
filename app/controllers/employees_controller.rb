class  EmployeesController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @company.employees.build(employee_params)
    @company.save
    redirect_to company_path(@company)
  end

  def show
  end

  def destroy
    @employee = Employee.find(params[:id]).destroy
    redirect_to company_path(@employee.company_id)
  end


  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end
end
