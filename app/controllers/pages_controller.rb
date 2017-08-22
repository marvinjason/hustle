class PagesController < ApplicationController

  before_action :redirect_welcome, only: 'welcome'
  before_action :redirect_admin, only: 'admin'
  before_action :redirect_employee, only: 'employee'
  layout :resolve_layout

  def welcome
  end

  def admin
  end

  def employee
  end

  def view
  end

  def charts
  end

  def manage
    @jobs = Job.all
  end

  def leaderboard
    @users = User.where.not(id: 2)
  end

  private
  def redirect_welcome
    if current_user
      if current_user.is_admin?
        redirect_to admin_path
      else
        redirect_to employee_path
      end
    else
      render 'welcome'
    end
  end

  def redirect_admin
    if current_user
      if current_user.is_admin?
        render 'admin'
      else
        redirect_to employee_path
      end
    else
      redirect_to welcome_path
    end
  end

  def redirect_employee
    if current_user
      if current_user.is_admin?
        redirect_to admin_path
      else
        render 'employee'
      end
    else
      redirect_to welcome_path
    end
  end

  def resolve_layout
    if action_name == 'admin'
      'admin_layout'
    elsif action_name == 'employee'
      'admin_layout'
    elsif action_name == 'view'
      'admin_layout'
    elsif action_name == 'charts'
      'admin_layout'
    elsif action_name == 'manage'
      'admin_layout'
    elsif action_name == 'leaderboard'
      'admin_layout'
    else
      'application'
    end
  end

end
