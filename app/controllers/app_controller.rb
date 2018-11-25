require 'MathTasks'
class AppController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout "default"

  def index
    @user_name = "User"
  end
  def task_1_sum
    x = params[:x]
    y = params[:y]
    @result = {summ: MathTasks.task_01(x: x.to_i,y: y.to_i)[:summ].to_s}
    if x == '' || y == ''
      flash[:error] = "One miss params 'x' or 'y'. Write x and y numbers."

    else
      flash[:success] = "#{x} + #{y} = #{@result[:summ]}"
    end
    redirect_to '/'
    #respond_to do |format|
    #  if @result
    #    format.html { redirect_to '/', notice: "#{x} * #{y} = #{@result[:summ]}" }
    #    format.json { render :json, @result }
    #  else
    #    format.html { render :index, @result.errors }
    #    format.json { render json: @result.errors }
    #  end
    #end
  end
  def task_1_diff
    x = params[:x]
    y = params[:y]
    @result = {diff: MathTasks.task_01(x: x.to_i,y: y.to_i)[:diff].to_s}
    if x == '' || y == ''
      flash[:error] = "One miss params 'x' or 'y'. Write x and y numbers."

    else
      flash[:success] = "#{x} - #{y} = #{@result[:diff]}"
    end
    redirect_to '/'
  end
  def task_1_comp
    x = params[:x]
    y = params[:y]
    @result = {comp: MathTasks.task_01(x: x.to_i,y: y.to_i)[:comp].to_s}
    if x == '' || y == ''
      flash[:error] = "One miss params 'x' or 'y'. Write x and y numbers."

    else
      flash[:success] = "#{x} * #{y} = #{@result[:comp]}"
    end
    redirect_to '/'
  end
  def task_2
    x = params[:x]
    y = params[:y]
    @result = {result: MathTasks.task_02(x: x.to_i,y: y.to_i)[:result].to_s}
    if x == '' || y == ''
      flash[:error] = "One miss params 'x' or 'y'. Write x and y numbers."

    else
      flash[:success] = "#{@result[:result]}"
    end
    redirect_to '/'
  end
  def task_3
    range = params[:range]
    @size = {result: MathTasks.task_03(range: range.to_i)[:size].to_s}
    @square = {result: MathTasks.task_03(range: range.to_i)[:square].to_s}
    if range == ''
      flash[:error] = "One miss params 'range'. Write range numbers."

    else
      flash[:success] = "Size: #{@size[:result]}, Square: #{@square[:result]}"
    end
    redirect_to '/'
  end
  def task_4
    x = params[:x]
    y = params[:y]
    @average_arithmetic_value = {result: MathTasks.task_04(x: x.to_i,y: y.to_i)[:average_arithmetic_value].to_s}
    @average_geometric_value = {result: MathTasks.task_04(x: x.to_i,y: y.to_i)[:average_geometric_value].to_s}
    if x == '' || y == ''
      flash[:error] = "One miss params 'x' or 'y'. Write x and y numbers."

    else
      flash[:success] = "Arithmetic: #{@average_arithmetic_value[:result]}, Geometric: #{@average_geometric_value[:result]}"
    end
    redirect_to '/'
  end

end
