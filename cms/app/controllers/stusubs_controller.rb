class StusubsController < ApplicationController
 def stuattendanceresult
    @a=session[:rollno]
    @stu=Stusub.find(:all, :conditions=>["rollno='#{@a}'"])
	#session[:@stusub]=@stusub
	#@stusub=Subject.find(:all, :conditions=>["subcode='#{@stusub.subcode}'"])
   if @stu.size==0
   redirect_to "/checklog/"
   #else
   #redirect_to "/subjects/subinfo"
   end
 end
end
