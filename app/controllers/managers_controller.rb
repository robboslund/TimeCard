class ManagersController < EmployeesController
  def manager_view_hours
    @employee_hours = Employee_Hour.all
  end
  def change_status
    status = params[:status]
    id = params[:object][:id]
    case status
    when '0'
      status ="pending"
    when '1'
      status ="approved"
    when '2'
      status ="denied"
      
    end
    Employee_Hour.update(id, :status => status)
    redirect_to :back
  end
  def new
      @employee_hours=Employee_Hour.new
  end

end
