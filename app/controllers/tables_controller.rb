class TablesController < ApplicationController
  def index   
    @tables = Table.all   
 end   
    
 def new   
    @table = Table.new   
 end   
    
 def create   
    @table = Table.new(table_params)   
       
    if @table.save   
       redirect_to tables_path, notice: "Successfully uploaded."   
    else   
       render "new"   
    end   
       
 end   
    
 def destroy   
    @table = Table.find(params[:id])   
    @table.destroy   
    redirect_to tables_path, notice:  "Successfully deleted."   
 end   
    
 private   
    def table_params   
    params.require(:table).permit(:department, :regulation)   
 end   
end
