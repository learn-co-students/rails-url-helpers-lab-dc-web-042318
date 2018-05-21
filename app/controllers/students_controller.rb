class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show

  end

  def activate
    @student = set_student
    if @sudent.active?
      @student.active = false
    else @student.active = true
    redirect_to_student_path(@student)
  end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end


end
