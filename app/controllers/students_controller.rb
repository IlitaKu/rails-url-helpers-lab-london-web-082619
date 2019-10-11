class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

#   def toggle_active
#     @student = Student.find(params[:id])
#     if @student.active?
#   @student.update(active: false)
#     else
#   @student.update(active: true)
#   # @student.save 
#   redirect_to student_path(@student)


#   end
# end

# end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
  end
end