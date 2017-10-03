class StudentCreateGroupsController < ApplicationController
  def create_groups
    @nombre = params[:nombre]
    @maxIntegrantes = params[:maxIntegrantes]
    @descripcion = params[:descripcion]
  end
end
