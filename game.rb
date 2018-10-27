class Game

  attr_reader :pais_capital, :country, :capital

  def initialize
  	@pais_capital = { :Andorra => "Andorra la vella"}
  	@pais_capital[:Portugal] = "Lissabon"
  	@pais_capital[:Spanien] = "Madrid"
  	@pais_capital[:Frankreich] = "Paris"
  	@pais_capital[:Niederlande] = "Amsterdam"
  	@pais_capital[:Griechenland] = "Athen"
  	@pais_capital[:Serbien] = "Belgrad"
  	@pais_capital[:Deutschland] = "Berlin"
  	@pais_capital[:Schweiz] = "Bern"
  	@pais_capital[:Slowakei] = "Bratislava"
  	@pais_capital[:Belgien] = "Brüssel"
    @pais_capital[:Ungarn] = "Budapest"
    @pais_capital[:Rumänien] = "Bukarest"
    @pais_capital[:Irland] = "Dublin"
    @pais_capital[:Finnland] = "Helsinki"
    @pais_capital[:Ukraine] = "Kiew"
    @pais_capital[:Moldawien] = "Kischinau"
    @pais_capital[:Dänemark] = "Kopenhagen"
    @pais_capital[:Slowenien] = "Ljubljana"
    @pais_capital[:England] = "London"
    @pais_capital[:Luxemburg] = "Luxemburg"
    @pais_capital[:Weißrussland] = "Minsk"
    @pais_capital[:Monaco] = "Monaco"
    @pais_capital[:Russland] = "Moskau"
    @pais_capital[:Norwegen] = "Oslo"
    @pais_capital[:Montenegro] = "Podgorica"
    @pais_capital[:Tschechien] = "Prag"
    @pais_capital[:Kosovo] = "Priština"
    @pais_capital[:Island] = "Reykjavík"
    @pais_capital[:Lettland] = "Riga"
    @pais_capital[:Italien] = "Rom"
    @pais_capital[:San_Marino] = "San Marino"
    @pais_capital[:Bosnien_und_Herzegowina] = "Sarajevo"
    @pais_capital[:Mazedonien] = "Skopje"
    @pais_capital[:Bulgarien] = "Sofia"
    @pais_capital[:Schweden] = "Stockholm"
    @pais_capital[:Estland] = "Tallinn"
    @pais_capital[:Albanien] = "Tirana"
    @pais_capital[:Liechtenstein] = "Vaduz"
    @pais_capital[:Malta] = "Valletta"
    @pais_capital[:Litauen] = "Vilnius"
    @pais_capital[:Polen] = "Warschau"
    @pais_capital[:Österreich] = "Wien"
    @pais_capital[:Kroatien] = "Zagreb"

  	
  end

  def read_countries_capitals
  	@pais_capital.each { |k,v| puts k,v }
  end

  def get_random_country
    @pais_capital.keys.sample  
  end

  def get_capital_answer(country)
    min_hash = @pais_capital.select { |k,v| k == country }
    return min_hash.values.first
  end

  def get_random_answers
    capital_options = [] 
    
    capital_options.push(@capital)
    while (capital_options.length < 4)
      random_country = get_random_country
      next if random_country == @country
      random_capital = get_capital_answer(random_country)
      next if capital_options.include? random_capital
      capital_options << random_capital
    end
    return capital_options
  end

  def reorganize_capital_options(array)
  	used_capitals = []
    while (used_capitals.length <4)
   	  option = array.sample
      next if used_capitals.include? option
      used_capitals << option
   end
   return used_capitals
  end
 
  def play_level1(points)
  	capital_options = []
    @country = self.get_random_country
    @capital = self.get_capital_answer(@country)
    capital_options = self.get_random_answers
    capital_options = self.reorganize_capital_options(capital_options)

    puts "Die Hauptstadt von #{@country} ist..."
    i = 1
    capital_options.each do |c|
    	puts "#{i}- #{c}"
    	i += 1
    end
    possible_answer = gets.chomp
    answer = capital_options[possible_answer.to_i - 1]
    if answer == @capital 
      puts "Sehr gut!"
      points +=1
      puts ""
    else
      puts "Falsch!"
      puts ""
    end
    return points 
  end

  def play_level2(points)
    @country = self.get_random_country
    @capital = self.get_capital_answer(@country)

    # remove accents from few exceptions
    @capital = "brussel" if @capital == "Brüssel"
    @capital = "pristina" if @capital == "Priština"
    @capital = "reykjavik" if @capital == "Reykjavík"

    puts "Was ist die Hauptstadt von #{@country}?"
    answer = gets.chomp

    if answer.downcase == @capital.downcase
      puts "Sehr gut!"
      points +=1
      puts ""
    else
      puts "Falsch!"
      puts ""
    end
    return points  
  end

end