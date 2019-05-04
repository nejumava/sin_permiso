require 'sinatra'

get '/' do
    if request.env["HTTP_PERMISO"]
        @permiso = 'Si lo logramos!'
    else
        @permiso = 'Sin Permiso'
    end
    erb :index
end 