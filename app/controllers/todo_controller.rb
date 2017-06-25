class TodoController < ApplicationController
    def index
    end
    def show 

        @todo = Todo.find_by_id(params[:id])
        @todo_name=@todo.task
        
    end
    def new
        
    end
    def create
       t = Todo.new
       t.task = params['task']
       t.time = params['time']
       t.amount = params['amount']
       t.location = params['location']
       t.save
       redirect_to "/todo/show/#{ t.id }"
    end
end    