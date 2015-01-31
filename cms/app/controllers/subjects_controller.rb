class SubjectsController < ApplicationController
 def stuattendanceresutl
   @subject=Subject.find(:all) 
 end
end
