# get, post, delete

require "sinatra"

def workshop_content(name)
    File.read("workshops/#{name}.txt")
rescue Errno::ENOENT
    return nil
end

def save_workshop(name, description)
    File.open("workshops/#{name}.txt", "w") do |file|
        file.print(description)
    end
end

def delete_workshop(name)
    File.delete("workshops/#{name}.txt")
end

get '/' do
    @files = Dir.entries("workshops")
    erb :home
end

get '/create' do
    erb :create
end

get '/:name' do
    @name = params[:name]
    @description = workshop_content(@name)
    erb :workshop
end

post '/create' do
    @name = params["name"]
    @description = params["description"]
    save_workshop(@name, @description)
    @message = "creado"
    erb :message
end

delete '/:name' do
    delete_workshop(params[:name])
    @name = params["name"]
    @message = "borrado"
    erb :message
end
