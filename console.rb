require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry-byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

film1 = Film.new ({"title" => "Rocky", "price" => 4})
film1.save()
film2 = Film.new ({"title" => "Scarface", "price" => 5})
film2.save()
film3 = Film.new ({"title" => "Avatar", "price" => 7})
film3.save()

customer1 = Customer.new ({"name" => "John", "funds" => 10})
customer1.save()
customer2 = Customer.new ({"name" => "Jack", "funds" => 6})
customer2.save()
customer3 = Customer.new ({"name" => "David", "funds" => 8})
customer3.save()

ticket1 = Ticket.new ({"film_id" => film1.id, "customer_id" => customer1.id})
ticket1.save()
ticket2 = Ticket.new ({"film_id" => film2.id, "customer_id" => customer2.id})
ticket2.save()
ticket3 = Ticket.new ({"film_id" => film3.id, "customer_id" => customer3.id})
ticket3.save()

film3.price = 6
film3.update()

customer1.name = "James"
customer1.update()

# film2.delete()
# customer1.delete()
# ticket3.delete()



binding.pry
nil
