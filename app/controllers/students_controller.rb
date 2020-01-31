class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def activate
    @student ||= Student.find(params[:id])
    if @student.active == true
      @student.active = false
      @student.save
    elsif @student.active == false
      @student.active = true
    end
    @student.active
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
