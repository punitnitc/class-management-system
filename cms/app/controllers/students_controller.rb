class StudentsController < ApplicationController
 def index
 end
 def about
 end
 def contac
 end
 def studentLogin
 end
 def checkLog
   @rollno=params[:rollno]
   session[:rollno]= @rollno
   #@a=params[:rollno]
   @student=Student.find(:all, :conditions=>["rollno='#{session[:rollno]}'"])
   
   if @student.size==0
   redirect_to "/students/studentLogin"
   end
 end
   
 def studentAttendance
	@stuSub=Stusub.find(:all)
    @stuEnrollSub=Stusub.find(:all, :conditions=>["rollno='#{session[:rollno]}'"])
	@subject=Subject.find(:all)
	if @stuEnrollSub.size==0
	redirect_to "/students/checkLog/"
    end
 end
end