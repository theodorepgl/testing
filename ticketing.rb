#DBKK is revamping its public transportation system and needs a modern ticketing solution. 
#As a skilled Ruby developer, you are tasked with creating a user-friendly and efficient ticketing system that allows riders to travel seamlessly between stations, 
#manage their card balance, and experience hassle-free travel.

#Destination - name, distance, price / distance, price, calculator
#card - balance, topup amount.
#rider - name, age, id number, contact number / payment, ride

# Station, name, distance, price, calculator
# Card, balance, topup_amount
# Rider, name, age, id_number, contact_number, payment, ride

class Rider
	def initialize(name, age, contact_number)
		@name = name
		@age = age
		@contact_number = contact_number
		@card = Card.new(0)
	end

	def name
		@name 
	end

	def card
		@card
	end

	def travels =(origin, destination)
		origin = origin
		destination = destination

		fare = destination.travel_fare - origin.travel_fare
		abs_fare = fare.abs
		card.deduct_fare(abs_fare)
	end
end

class Card
	def initialize(balance)
		@balance = balance
	end

	def balance
		@balance
	end

	def top_up_card(amount)
		@balance += amount
	end

	def deduct_fare(amount)
		@deduct_fare
	end

end

class station
	def initialize (name, distance, travel_fare)
		@name = name 
		@distance = distance
		@travel_fare = travel_fare
	end

	def name
		@name 
	end

	def distance
		@distance 
	end

	def travel_fare
		@travel_fare
	end
end

card = Card.new(0)

rider = Rider.new("Mia", 21, "0111111111")
puts rider.name
puts rider.card
puts rider.card.balance # 0
puts rider.card.top_up_card(10)
puts "Card balance: #{rider.card.balance}" #10

station1 = Station.new("Riverson" 4, 2)
station2 = Station.new("One Borneo" 10, 5)

puts station.name
puts station.name
