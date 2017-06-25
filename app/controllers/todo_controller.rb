class TodoController < ApplicationController
    def index
        @todos = Todo.all
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
       redirect_to "/show/#{ t.id }"
    end
    def edit
         @todo = Todo.find_by_id(params[:id])
    end
    def update
      t = Todo.find_by_id(params['id'])
      t.task = params['task']
      t.time = params['time']
      t.amount = params['amout']
      t.location = params['location']
      t.save
      redirect_to "/show/#{t.id}"
    end
    def destroy
     t = Todo.find_by_id(params[:id])
     t.destroy
     redirect_to "/index"
    end

   
end    