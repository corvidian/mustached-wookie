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


def add_lectures(course, start_date, end_date, weekday, hours, minutes, place, length=105)

  start_date = Date.parse(start_date)
  end_date = Date.parse(end_date)

  (start_date .. end_date).each do |date|
    date = date.to_datetime
    if date.wday == weekday
      course.lectures.create(
          start: date.beginning_of_day + hours.hours + minutes.minutes,
          length: length, place: place)
    end
  end
end

angular = Course.create(name: 'Angular.js ohjelmointiprojekti', code: '582381', lecturer: 'Matti Luukkainen')

angular.lectures.create(start: '2014-05-05 10:15', length: '105', place: 'B221')

kaja = Course.create(name:'Käyttöjärjestelmät', code:'582219', lecturer:'Teemu Kerola')
add_lectures(kaja, '2014-01-13', '2014-02-19', MA, 12, 15, 'B123')
add_lectures(kaja, '2014-01-13', '2014-02-19', KE, 12, 15, 'B123')
add_lectures(kaja, '2014-03-10', '2014-04-23', MA, 12, 15, 'B123')
add_lectures(kaja, '2014-03-10', '2014-04-23', KE, 12, 15, 'B123')

ohtu = Course.create(name: 'Ohjelmistotuotanto', code: '581259', lecturer: 'Matti Luukkainen')
add_lectures(ohtu, '2014-03-10', '2014-04-22', MA, 14, 15, 'CK112', 165)
add_lectures(ohtu, '2014-03-10', '2014-04-22', TI, 12, 15, 'CK112')
