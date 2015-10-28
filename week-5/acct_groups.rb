=begin
PSEUDOCODE
INPUT: string of names
OUTPUT: An array of 3-6 names

split the names into an array.
Use a random number generator to
randomly assign names to groups
until out of names.

make sure that no group has less
than 3 people.

=end
names = "Syema Ailia
Syema Ailia
Island Foxes 2016
Student
Alan Alcesto
Alan Alcesto
Island Foxes 2016
Student
Daniel Andersen
Daniel Andersen
Island Foxes 2016
Student
James Artz
James Artz
Island Foxes 2016
Student
Darius Atmar
Darius Atmar
Island Foxes 2016
Student
Brian Bensch
Brian Bensch
Island Foxes 2016
Student
Nicola Beuscher
Nicola Beuscher
Island Foxes 2016
Student
Kris Bies
Kris Bies
Island Foxes 2016
Student
Logan Bresnahan
Logan Bresnahan
Island Foxes 2016
Student
William Brinkert
William Brinkert
Island Foxes 2016
Student
Scott Chou
Scott Chou
Island Foxes 2016
Student
Bernice Anne W Chua
Bernice Anne W Chua
Island Foxes 2016
Student
Abraham Clark
Abraham Clark
Island Foxes 2016
Student
Jon Clayton
Jon Clayton
Island Foxes 2016
Student
Kevin Corso
Kevin Corso
Island Foxes 2016
Student
Jacob Crofts
Jacob Crofts
Island Foxes 2016
Student
Amaar Fazlani
Amaar Fazlani
Island Foxes 2016
Student
Solomon Fernandez
Solomon Fernandez
Island Foxes 2016
Student
Edward Gemson
Edward Gemson
Island Foxes 2016
Student
Jamar Gibbs
Jamar Gibbs
Island Foxes 2016
Student
Chris Gomes
Chris Gomes
Island Foxes 2016
Student
Will Granger
Will Granger
Island Foxes 2016
Student
Christopher M. Guard
Christopher M. Guard
Island Foxes 2016
Student
Ryan Ho
Ryan Ho
Island Foxes 2016
Student
Igor Kazimirov
Igor Kazimirov
Island Foxes 2016
Student
Walter Kerr
Walter Kerr
Island Foxes 2016
Student
Karla King
Karla King
Island Foxes 2016
Student
Becky Lehmann
Becky Lehmann
Island Foxes 2016
Student
Malia Lehrer
Malia Lehrer
Island Foxes 2016
Student
Carolina Medellin
Carolina Medellin
Island Foxes 2016
Student
Timothy Meixell
Timothy Meixell
Island Foxes 2016
Student
Chris Miklius
Chris Miklius
Island Foxes 2016
Student
Joshua Monzon
Joshua Monzon
Island Foxes 2016
Student
Shea Munion
Shea Munion
Island Foxes 2016
Student
Bryan Munroe
Bryan Munroe
Island Foxes 2016
Student
Trevor Newcomb
Trevor Newcomb
Island Foxes 2016
Student
Aleksandra Nowak
Aleksandra Nowak
Island Foxes 2016
Student
Fatma Ocal
Fatma Ocal
Island Foxes 2016
Student
Van Phan
Van Phan
Island Foxes 2016
Student
Luis Fernando Plaz
Luis Fernando Plaz
Island Foxes 2016
Student
Natalie Polen
Natalie Polen
Island Foxes 2016
Student
Alicia Quezada
Alicia Quezada
Island Foxes 2016
Student
Jessie Richardson
Jessie Richardson
Island Foxes 2016
Student
Nimi Samocha
Nimi Samocha
Island Foxes 2016
Student
Zach Schatz
Zach Schatz
Island Foxes 2016
Student
Tal Schwartz
Tal Schwartz
Island Foxes 2016
Student
Pratik Shah
Pratik Shah
Island Foxes 2016
Student
Josh Shin
Josh Shin
Island Foxes 2016
Student
Shawn Spears
Shawn Spears
Island Foxes 2016
Student
Sasha Tailor
Sasha Tailor
Island Foxes 2016
Student
Nil Thacker
Nil Thacker
Island Foxes 2016
Student
Natasha Thapliyal
Natasha Thapliyal
Island Foxes 2016
Student
Sabrina Unrein
Sabrina Unrein
Island Foxes 2016
Student
Brian Wagner
Brian Wagner
Island Foxes 2016
Student
Clinton Weber
Clinton Weber
Island Foxes 2016
Student
Gregory Wehmeier
Gregory Wehmeier
Island Foxes 2016
Student
Michael Whelpley
Michael Whelpley
Island Foxes 2016
Student
Peter N Wood
Peter N Wood
Island Foxes 2016
Student
Ryan Zell
Ryan Zell
Island Foxes 2016
Student"

#names.split(/"Island Foxes"/)
names = names.split("\n")
names_arr = []

names.each_index do |x|
  if x % 4 == 0
    names_arr << names[x]
  end
end
print names_arr
num = names.length
names_arr.each do |x|
