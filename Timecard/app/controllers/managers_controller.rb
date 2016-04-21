class ManagersController < EmployeesController
  def manager_view_hours
    if session[:current_user]
      emp= Employee.find_by username: session[:current_user]
      if emp.isManager == 1
        redirect_to employees_path
      end
    else
      redirect_to employees_path
    end
    @employee_hours = Employee_Hour.all
    @employee =Employee.all
  end
  
  def change_status
    status = params[:status]
    id = params[:object][:id]
    case status
    when '0'
      status ="pending"
    when '1'
      status ="approved"
      if (Employee_Hour.find_by(id).status != "approved")
        emp= Employee.find_by username: params[:object][:user]
        hours= params[:object][:hours].to_i + emp.hours_worked
       Employee.update(emp.id,:hours_worked => hours)
     end
    when '2'
      status ="denied"
      if (Employee_Hour.find_by(id).status == "approved")
        emp= Employee.find_by username: params[:object][:user]
        hours=  emp.hours_worked - params[:object][:hours].to_i 
        Employee.update(emp.id,:hours_worked => hours)
     end  
    end
    Employee_Hour.update(id, :status => status)
    redirect_to :back
  end
  def new
      @employee_hours=Employee_Hour.new
  end

end