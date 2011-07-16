require 'net/http'
require 'uri'

names=["Gaspar Obimba"]
   # ,"Hillary Fray"
   #    ,"Elinor Turlington"
   #    ,"Lenore Galle"
   #    ,"Kenya Spradley"
   #    ,"Allyson Roig"
   #    ,"Loraine Tomaszewski"
   #    ,"Lance Macdonnell"
   #    ,"Lorrie Bonanno"
   #    ,"Roxie Slovak"
   #    ,"Althea Hudkins"
   #    ,"Erik Kear"
   #    ,"Tyrone Angevine"
   #    ,"Margery Granberry"
   #    ,"Selena Piehl"
   #    ,"Guy Parkey"
   #    ,"Kelly Leek"
   #    ,"Clare Jess"
   #    ,"Selena Winford"
   #    ,"Mathew Batdorf"
   #    ,"Nannie Heikkinen"
   #    ,"Althea Maslowski"
   #    ,"Milagros Frasure"
   #    ,"Liza Dufner"
   #    ,"Allan Clinkscales"
   #    ,"Noemi Hawker"
   #    ,"Bobb"}

names.each do |name|
	email=name.split(" ")[0]
    #1: Simple POST
  res = Net::HTTP.post_form(URI.parse('http://vogueable.heroku.com/users'),
    { 'user[user_name]' =>"#{name}", 'user[email]' => "#{email}@vogueable.com"}) 
  puts res.body
 # count-=1;
end
