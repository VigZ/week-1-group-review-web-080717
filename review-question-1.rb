## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]
def get_bulba_url
  pokemon.each do |pokemon|
    if poke[:name] == "bulbasaur"
      return poke[:abilities][0][:ability][:url]
    end
  end
  puts "Bulbasaur's url #{get_bulba_url(pokemon)}"

  def pokemon_exp(pokemon)
    pokemon.find do |poke|
      poke[:base_experience] > 40
    end
      [:name]
  end

    puts " First pokemon with >40 base exp: #{pokemon_exp(pokemon)}"

    def all_pokemon_exp(pokemon)
      pokemon.map do |poke|
        if poke[:base_experience] > 40
        poke[:name]
        end
      end
    end

      puts " All pokemon with >40 base exp: #{all_pokemon_exp(pokemon)}"

      def all_poke_names(pokemon)
        pokemon.map do |poke|
          poke[:name]
        end
      end

        puts " All pokemon names: #{all_poke_names(pokemon)}"

        def heavy_pokemon(pokemon)
          pokemon.select do |poke|
            poke[:weight] > 60
          end.map { |poke| poke[:name]}
        end

        puts "Pokemon with >60 weight #{heavy_pokemon(pokemon)}"

        def pokemon_exists(pokemon, pokemon_name)
          pokemon.any? do |poke|
            poke[:name] == name
          end
        end
        puts "Does pokemon exist?: #{pokemon_exists(pokemon, pokemon_name)}"

# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
