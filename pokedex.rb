require 'json'
require 'rest-client'

class Pokedex  
    def find (pokemon_id) 
        url = "https://pokeapi.co/api/v2/pokemon/#{pokemon_id}"
    begin
        respuesta = RestClient.get url 
        resultado =JSON.parse respuesta.to_str 
        nombre = resultado['forms'] [0] ['name']
        id = resultado['id']
        tipo = resultado['types'] [0] ['type'] ['name']
        
        if   resultado['types'] [1] 
            tipo2 = resultado['types'] [1] ['type'] ['name']
        else
            tipo2 == nil
        end

       

        pokemon = {nombre:, id:, tipo:, tipo2:}
    rescue
        :error
    end
    end  
end 









 

