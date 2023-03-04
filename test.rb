require 'minitest/autorun'
require './pokedex.rb' 

class PokedexTest < Minitest::Test 

    def setup 
        @pokedex = Pokedex.new 
    end  

    def test_find_uno
        nombre = "bulbasaur"
        id = 1
        tipo = "grass"
        tipo2 = "poison"
        pokemon = {nombre:, id:, tipo:, tipo2:}
        assert_equal pokemon, @pokedex.find(1)
    end 


    def test_find_veinticinco
        nombre = "pikachu"
        id = 25
        tipo = "electric"
        tipo2 = nil
        pokemon = {nombre:, id:, tipo:, tipo2:}
        assert_equal pokemon, @pokedex.find(25)
    end 

    def test_find_mil
        nombre = "gholdengo"
        id = 1000
        tipo = "steel"
        tipo2 = "ghost"
        pokemon = {nombre:, id:, tipo:, tipo2:}
        assert_equal pokemon, @pokedex.find(1000)
    end 

    def test_find_mil_quinientos
        assert_equal :error, @pokedex.find(1500)
    end 
end 