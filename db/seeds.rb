# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MA=1
TI=2
KE=3
TO=4
PE=5
LA=6
SU=0


def add_lectures(course, place, start_date, end_date, weekday, hours, minutes=15, length=105)
  if course.exercise_groups.find_by(name:'Lectures')
    lectures = course.exercise_groups.find_by(name:'Lectures')
  else
    lectures = course.exercise_groups.create(name:'Lectures')
  end

  add_events_to_group(lectures,  place, start_date, end_date, weekday, hours, minutes=15, length=105)
end

def add_group(course, name, place, start_date, end_date, weekday, hours, minutes=15, length=105)
  group = course.exercise_groups.create(name:name)
  add_events_to_group(group,  place, start_date, end_date, weekday, hours, minutes=15, length=105)
end

def add_events_to_group(group, place, start_date, end_date, weekday, hours, minutes=15, length=105)
  Time.zone = 'Helsinki'

  start_date = Date.parse(start_date)
  end_date = Date.parse(end_date)

  (start_date .. end_date).each do |date|
    date = date.in_time_zone
    if date.wday == weekday
      group.exercises.create(
          start: date.beginning_of_day + hours.hours + minutes.minutes,
          length: length,
          place: place)
    end
  end
  group
end

angular = Course.create(name: 'Angular.js ohjelmointiprojekti')
add_lectures(angular, 'B221', '2014-05-05', '2014-05-05', MA, 10)
add_lectures(angular, 'B221', '2014-05-12', '2014-05-12', MA, 9)
ang1 = add_group(angular, 'Paja', 'B221', '2014-05-05', '2014-05-09', MA, 12, 15, 225)
puts ang1.inspect
add_events_to_group(ang1, 'B221', '2014-05-05', '2014-05-09', TI, 12, 15, 225)
add_events_to_group(ang1, 'B221', '2014-05-05', '2014-05-09', KE, 12, 15, 225)
add_events_to_group(ang1, 'B221', '2014-05-05', '2014-05-09', TO, 12, 15, 225)
add_events_to_group(ang1, 'B221', '2014-05-05', '2014-05-09', PE, 12, 15, 225)


kaja = Course.create(name:'Käyttöjärjestelmät')
add_lectures(kaja, 'B123', '2014-01-13', '2014-02-19', MA, 12)
add_lectures(kaja, 'B123', '2014-01-13', '2014-02-19', KE, 12)
add_lectures(kaja, 'B123', '2014-03-10', '2014-04-23', MA, 12)
add_lectures(kaja, 'B123', '2014-03-10', '2014-04-23', KE, 12)

ohtu = Course.create(name: 'Ohjelmistotuotanto')
add_lectures(ohtu, 'CK112', '2014-03-10', '2014-04-22', MA, 14, 15, 165)
add_lectures(ohtu, 'CK112', '2014-03-10', '2014-04-22', TI, 12)

sciwri = Course.create(name:'Scientific Writing for MSc in Computer Science')
add_lectures(sciwri, 'B119', '2014-03-11', '2014-04-22', TI, 10)

ohpe = Course.create(name: 'Ohjelmoinnin perusteet')
add_lectures(ohpe, 'CK112', '2014-01-13', '2014-01-13', MA, 10)

otm = Course.create(name: 'Ohjelmistotekniikan menetelmät (luennoton)')
add_lectures(otm, 'B222', '2014-03-10', '2014-03-10', MA, 16, 15, 45)

tikape = Course.create(name: 'Tietokantojen perusteet')
add_lectures(tikape, 'B123', '2014-01-14', '2014-02-20', TI, 10)
add_lectures(tikape, 'B123', '2014-01-14', '2014-02-20', TO, 10)

kandi = Course.create(name: 'Kandidaatintutkielma (kevät 2014)')
add_lectures(kandi, 'D122', '2014-01-13', '2014-01-20', MA, 12)

tira = Course.create(name: 'Tietorakenteet ja algoritmit')
add_lectures(tira, 'A111', '2014-01-13', '2014-02-19', MA, 10)
add_lectures(tira, 'A111', '2014-01-13', '2014-02-19', KE, 10)
add_lectures(tira, 'A111', '2014-03-12', '2014-04-02', KE, 10)
add_lectures(tira, 'A111', '2014-03-17', '2014-04-14', MA, 10)
add_lectures(tira, 'CK112', '2014-04-09', '2014-04-09', KE, 10)

titupe = Course.create(name: 'Tietoturvan perusteet')
add_lectures(titupe, 'B123', '2014-01-14', '2014-02-18', TI, 14)
add_lectures(titupe, 'B123', '2014-01-14', '2014-02-13', TO, 12)
add_lectures(titupe, 'B123', '2014-02-21', '2014-02-21', PE, 14)

liny = Course.create(name: 'Linux-ylläpito')
add_lectures(liny, 'CK112', '2014-01-15', '2014-02-21', KE, 14)
add_lectures(liny, 'CK112', '2014-01-15', '2014-02-21', PE, 14)
add_lectures(liny, 'D122', '2014-03-12', '2014-04-25', KE, 14)
add_lectures(liny, 'D122', '2014-03-12', '2014-04-25', PE, 14)

scala = Course.create(name: 'Ohjelmointitekniikka (Scala)')
add_lectures(scala, 'CK122', '2014-03-11', '2014-04-24', TI, 14)
add_lectures(scala, 'CK122', '2014-03-11', '2014-04-24', TO, 14)

hci = Course.create(name: 'Human-Computer Interaction')
add_lectures(hci, 'D122', '2014-03-11', '2014-04-23', KE, 10)
add_lectures(hci, 'D122', '2014-03-11', '2014-04-23', TI, 14)

ruby = Course.create(name: 'Web-palvelinohjelmointi Ruby on Rails')
add_lectures(ruby, 'CK112', '2014-01-13', '2014-02-21', MA, 16)

datam = Course.create(name: 'Data Mining')
add_lectures(datam, 'D122', '2014-03-10', '2014-04-24', MA, 12, 15, 165)
add_lectures(datam, 'D122', '2014-03-10', '2014-04-24', TO, 12, 15, 165)

dda = Course.create(name: 'Deterministic Distributed Algorithms')
add_lectures(dda, 'B222', '2014-03-11', '2014-04-24', TI, 12)
add_lectures(dda, 'B222', '2014-03-11', '2014-04-24', TO, 12)

kvantti = Course.create(name: 'Kvanttilaskenta')
add_lectures(kvantti, 'C222', '2014-05-05', '2014-05-09', MA, 10)
add_lectures(kvantti, 'C222', '2014-05-05', '2014-05-09', TI, 10)
add_lectures(kvantti, 'C222', '2014-05-05', '2014-05-09', KE, 10)
add_lectures(kvantti, 'C222', '2014-05-05', '2014-05-09', TO, 10)
add_lectures(kvantti, 'C222', '2014-05-05', '2014-05-09', PE, 10)

loca = Course.create(name: 'Location-Awareness')
add_lectures(loca, 'B222', '2014-03-12', '2014-04-24', KE, 16)
add_lectures(loca, 'C222', '2014-03-12', '2014-04-24', TO, 16)

proba = Course.create(name: 'Probabilistic Models')
add_lectures(proba, 'D122', '2014-01-14', '2014-02-20', TI, 16)
add_lectures(proba, 'D122', '2014-01-14', '2014-02-20', TO, 16)

due = Course.create(name: 'Design and User Evaluation of Augmented-Reality Interfaces')
add_lectures(due, 'C222', '2014-03-12', '2014-04-25', KE, 10)
add_lectures(due, 'C222', '2014-03-12', '2014-04-25', PE, 10)

ias = Course.create(name: 'Interactive Systems')
add_lectures(ias, 'D122', '2014-01-14', '2014-02-19', TI, 12)
add_lectures(ias, 'D122', '2014-01-14', '2014-02-19', KE, 14)

sws = Course.create(name: 'Software Security')
add_lectures(sws, 'D122', '2014-03-12', '2014-04-23', KE, 16)

compilers = Course.create(name: 'Compilers')
add_lectures(compilers, 'C222', '2014-01-15', '2014-02-21', KE, 14)
add_lectures(compilers, 'C222', '2014-01-15', '2014-02-21', PE, 12)