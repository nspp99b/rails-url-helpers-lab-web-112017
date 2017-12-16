class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def activate
    @student.change_active
    redirect_to action: "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
