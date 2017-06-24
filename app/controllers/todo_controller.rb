class TodoController < ApplicationController
    def index
    end
    def show 
        @todo_name=params[:name]
    end
end    