=begin

PSEUDOCODE
INPUT: Array of student names
OUTPUT: An array of arrays (of 3-6 names)

-Randomize the array of names (shuffle)
-Calculate remainder of array length / 6
-Initialize a new empty array, GROUPS
-Populate GROUPS with slices of 6 from shuffled array
-IF remainder is < 3, pull names from other slices until last group has at least 3 names
END
-RETURN array of acct groups

=end

island_fox_names = ["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Peter N Wood", "Ryan Zell", "EXTRA_NAME", "EXTRA_NAME", "EXTRA_NAME"]

#INITIAL SOLUTION
=begin

def acct_grouper(array)
  array.shuffle!()
  remainder = array.length % 6
  groups = []
  array.each_slice(6) {|names| groups.push(names)}
  if remainder == 1
    groups[-1] << groups[groups.length-2].pop()
    groups[-1] << groups[groups.length-2].pop()
  elsif remainder ==2
    groups[-1] << groups[groups.length-2].pop()
  end
end

=end


#REFACTORED SOLUTION

def acct_grouper(array)
  array.shuffle!()
  remainder = array.length % 6
  groups = []
  array.each_slice(6) {|names| groups.push(names)}
  while groups[-1].length < 3
    groups[-1] << groups[groups.length-2].pop()
  end
end

acct_grouper(island_fox_names)


=begin
REFLECTION
WHAT WAS THE MOST INTERESTING AND MOST DIFFUCULT PART
OF THIS CHALLENGE?
Using an enumerable method was the most interesting
part. After learning a bit about enumerables, they
seem very powerful for list based elements like we're
dealing with here. The most difficult part was doing
an exercise on new material with very little direction
on how to go about it.

DO YOU FEEL YOU ARE IMPROVING IN YOUR ABILITY TO WRITE
PSEUDOCODE AND BREAK THE PROBLEM DOWN?
I feel a little more comfortable, but I still feel
like I don't quite have the vocabulary to pseudocode
efficiently. I feel like I have to break the problem
down on paper before I even start pseudocoding.

WAS YOUR APPROACH FOR AUTOMATING THIS TASK A GOOD
SOLUTION? WHAT COULD HAVE MADE IT EVEN BETTER?
I think my approach is working pretty well. Although I
knew that we weren't expected to use classes here, I
feel like it would be better if I created a class that
could initialize objects for acct groups.

WHAT DATA STRUCTURE DID YOU DECIDE TO STORE THE
AOCCOUNTABILITY GROUPS IN AND WHY?
I spent a while struggling to think of how to store
the names before finally realizing that, duh, I can
store them in an array of arrays instead of a new
array for each group.

WHAT DID YOU LEARN IN THE PROCESS OF REFACTORING YOUR
INTITIAL SOLUTION? DID YOU LEARN ANY NEW RUBY METHODS?
I wasn't really able to figure out my initial solution
without already using a couple built in methods. When I
went back to refactor, I was able to shorten my code
by a few lines, but not really able to implement any
new methods. While trying to figure out how to go
about the problem, I did learn about each_slice and
shuffle though.

=end