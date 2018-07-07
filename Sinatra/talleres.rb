require "sinatra"

get '/' do
    @files = Dir.entries("workshops")
    erb :home
end

get '/:nombre' do
    @nombre = params[:nombre]
    erb :taller
end