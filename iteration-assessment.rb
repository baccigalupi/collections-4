class_information=[
  {first_name:'John', last_name:'Foley', email:'john@gschool.it', class:'Beginning snark'},
  {first_name:'Sylwester', last_name:'Kelsey', email:'sellie@gmail.com', class:'Ruby Immersive'},
  {first_name:'Timothy', last_name:'Rama', email:'tim.rama@gmail.com', class:'Ruby Immersive'},
  {first_name:'Kane', last_name:'Baccigalupi', email:'kane@gschool.it', class:'C for dummies'},
  {first_name:'Nikita', last_name:'Theodosius', email:"nikita.theo@gmail.com", class:'Ruby Immersive'},
  {first_name:'Roddy', last_name:'Eldred', email:"roddy.el@gmail.com ", class:'Ruby Immersive'},
  {first_name:'Martha', last_name:'Berner', email:"martha@gschool.it", class:'Time travel for beginners'},
  {first_name:'Kofi', last_name:'Thomas', email:"k.thomas@hotmail.com", class:'Ruby Immersive'}]

def give_contact(contact)
  print "#{contact[:last_name]}"
  print " "*(20 - contact[:last_name].length) + "#{contact[:first_name]}"
  print " "*(20 - contact[:first_name].length) + "#{contact[:email]}"
  print " "*(40 - contact[:email].length) + "#{contact[:class]}"
  puts
end

def contact_break
  print "*" * 106
  print "
"

end

while true
  puts "Would you like to view contacts? Reply All/Some/No"
  response=gets.chomp.downcase

  if response=='all'
    puts "You asked for it..."
    contact_break
    class_information.each do |contact|
      give_contact(contact)
    end
    contact_break
  elsif response=='some'
    puts "Type the first letter of the last name you would like to look up!"
    letter=gets.chomp.upcase
    contact_break
      class_information.each do |contact|
        if contact[:last_name][0]==letter
          give_contact(contact)
        end
      end
    contact_break
  elsif response=='no'
    puts "Have a spooky day ;)"
    break
  end
end
