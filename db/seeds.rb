# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_list = [
			["Alumno", "Gustavo","Chalco","Apaza","Masculino","DNI",44728899,"gchalcoa@gmail.com","abc321","gchalcoa@gmail.com","abc321"],
			["Usuario", "Felix","Holguin","Jimenez","Masculino","DNI",47233229,"fholguinj@gmail.com","abc321","fholguinj@gmail.com","abc321"],
			["Usuario", "Mario","Arce","Arce","Masculino","DNI",45729899,"marce@gmail.com","abc321","marce@gmail.com","abc321"],
			["Usuario", "Silvia","Rodriguez","Fuentes","Femenino","DNI",45785478,"srodriguez@gmail.com","abc321","srodriguez@gmail.com","abc321"],
			["Usuario", "Victor","Castaneda","Pomares","Masculino","DNI",44744199,"vcastaneda@gmail.com","abc321","vcastaneda@gmail.com","abc321"],
			["Alumno", "Paola","Ortiz","Jimenez","Femenino","TIU",201300412,"portizj@gmail.com","abc321","portizj@gmail.com","abc321"],
			["Alumno", "Gustavo","Ganoza","Arango","Masculino","DNI",48728499,"gganozaa@gmail.com","abc321","gganozaa@gmail.com","abc321"],
			["Usuario", "Lalo","Caza","Rios","Masculino","DNI",44738791,"lcaza@gmail.com","abc321","lcaza@gmail.com","abc321"],
			["Alumno", "Karen","Chero","Rios","Femenino","DNI",41226899,"kchero@gmail.com","abc321","kchero@gmail.com","abc321"]
]

user_list.each do |type_person, name_user, primary_last_name, second_last_name, sex, type_document, number_document, email, password, email_confirmation, password_confirmation|
	User.create(type_person: type_person, name_user: name_user, primary_last_name: primary_last_name, second_last_name: second_last_name, sex: sex, type_document: type_document, number_document: number_document, email: email, password: password, email_confirmation: email_confirmation, password_confirmation: password_confirmation)
end

music_style_list = [
	["Heavy Metal"], ["Salsa"], ["Rock"], ["Pop"], ["House"]
]

music_style_list.each do |name|
	Music_style.create(name: name)
end
