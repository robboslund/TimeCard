class EmployeesController < ApplicationController

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :username, :password)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @employee = Employee.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end
  
  def check
    if Employee.exists?(username: params[:employee][:username], password: params[:employee][:password]) then
       session[:current_user] = params[:employee][:username]
       redirect_to punch_hours_url
    else
      flash[:notice] = "login failed"
      redirect_to employees_path
    end
  end
  
  def punch_hours
    @employee= Employee.find_by username: session[:current_user]
  end
  
  def add_hours
    hours_worked = params[:employee_hour][:hours].to_i
    emp_hour = Employee_Hour.create(username: session[:current_user], hours: hours_worked, status: "pending")
    redirect_to view_hours_url
  end
  
  def view_hours
    @employee_hours = Employee_Hour.where(username: session[:current_user])
  end
 
  def index
    @employees = Employee.all
  end

  def new
    # default: render 'new' template
  end

end
