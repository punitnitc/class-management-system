class TeachersController < ApplicationController
 def teacherLogin
 end
 def checkTeacherLog
   @a=params[:id]
   @b=params[:pwd]
   session[:id]=@a
   session[:pwd]=@b   
   @teacher=Teacher.find(:all, :conditions=>["id='#{@a}' and pwd='#{@b}'"])
   if @teacher.size==0
   redirect_to "/teachers/teacherLogin"
   end
 end
 def teacherDetails
  @teachers=Teacher.find(:all)
 end
 def viewSubForAtt
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
 end
 def teacherViewAtt
  session[:subcode] = params[:value]
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
  @student=Student.find(:all)
  @stuSub=Stusub.find(:all)
 end
  def viewSubForStuInfo
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
 end
 def studentInfo
  session[:subcode] = params[:value]
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
  @student=Student.find(:all)
  @stuSub=Stusub.find(:all)
 end
 def viewSubForTakeAtt
    @teachSub=Teachsub.find(:all)
    @subject=Subject.find(:all)
 end
 def viewStuNameForTakeAtt
  session[:subcode] = params[:subcode]
  @subject=Subject.find(:all, :conditions=>["subcode='#{session[:subcode]}'"])
   for subject in @subject
     subject.totalclass= subject.totalclass+1
   subject.update_attributes(params[:subject])
   end
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
  @student=Student.find(:all)
  @stuSub=Stusub.find(:all)
 end
 def updateAbsentName
   @stusub=Stusub.find(:all, :conditions=>["subcode='#{session[:subcode]}' and rollno='#{params[:rollno]}'" ])
    for stusub in @stusub
    stusub.absent=stusub.absent+1
    stusub.update_attributes(params[:stusub])
    end
    redirect_to "/teachers/databaseUpdate/"
 end
 def databaseUpdate
 end
 def updateAbsentNameAgain
   
  @teachSub=Teachsub.find(:all)
  @subject=Subject.find(:all)
  @student=Student.find(:all)
  @stuSub=Stusub.find(:all)
 end
  def updateAbsentNameAgains
   redirect_to "/teachers/viewStuNameForTakeAtt"
  end
end

