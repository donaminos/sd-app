# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  course1 = Course.create(title: 'Apprends à coder un MVP avec Ruby on Rails en 24h chrono', 
# 						description: 'Ce cours est une introduction par la pratique au monde du développement web. Nous allons partir d\'une feuille blanche ou plutôt une idée de startup, et aboutir à un Minimum Viable Product déployé dans le cloud.',
# 						introduction: '<p>
# Derrière ce titre un peu provocateur se cache une hypothèse simple: celle qu’on peut produire des choses intéressantes en un weekend. 
# <br>
# J\’ai eu l’occasion de participer à plusieurs hackathons qui démarrent le vendredi soir et se terminent le dimanche soir; et j\'ai pu voir ce qu\'on pouvait faire en si peu de temps.  Il suffit d\'être suffisamment motivé. C’est cette expérience qui a inspiré ce format de 24H chrono.
# </p>
# <p>
# Soyons réaliste, on ne de devient pas ingénieur(e) ou architecte logiciel en 24 H. L\’idée de ce cours est que tu puisses détruire la frontière entre toi et le monde du code en l’espace d’un weekend. 
# Le rythme est certes, un peu soutenu; mais l\'exercise reste intéressant et très enrichissant je pense. 
# <br>
# Tu n\’est pas obligé de le suivre. L\'essentiel est d\'apprendre et de prendre du plaisir.  
# Et la meilleure manière de faire, c\'est celle qui te convient le plus. 
# </p>
# <br>
# <p>
# Les challenges à relever durant ce cours:
# <ul>
# <li>Avoir un environnement de développement opérationnel</li>
# <li>Être familier avec la jargon du dev: front, back , serveur, classe, controller...</li>
# <li>Connaitre le principe de la programmation orientée objet et des bases de données relationnelles</li>
# <li>Lire et écrire HTML et CSS notamment avec Bootstrap</li>
# <li>Être à l\'aise avec le ligne de commande: créer un projet, démarrer le serveur, migrer la base de données...</li>
# <li>Connaitre le Workflow basic de  git: add / commit / push</li>
# <li>Être capable de reproduire une application similaire à celle du cours</li>
# <li>Être capable de déployer une application rails sur le cloud Heroku</li>
# </ul>
# </p>
# <br>
# <p>Pour une question, un blocage ou juste faire un coucou => amine[at]startupdecode[dot]com</p>',
# order: 1,
# slug: 'apprends-a-coder-un-mvp-avec-ruby-on-rails-en-24h-chrono')
		


Lesson.create(title: 'Quelle techno choisir?', 
	description: 'Nous allons voir quels sont les critères à prendre en compte pour choisir une techno pour son projet de startup',
	course_id: 1,
	video_id: '103858295' )

Lesson.create(title: 'Installer Ruby on Rails sur Windows', 
	description: 'Comment installer Ruby on Rails sur Windows',
	course_id: 1,
	video_id: '106980845' )

Lesson.create(title: 'Installer Ruby on Rails sur Mac', 
	description: 'Comment installer Ruby on Rails sur Mac',
	course_id: 1,
	video_id: '106982164' )