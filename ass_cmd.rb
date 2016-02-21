require "./ass"
include Tijesunimi

def start
	puts "Please Enter the Authors name: "
	author_name = gets.chomp
	$author = NotesApplication.new author_name
    ask
end

def create
	puts "Enter your note: "
	text = gets.chomp
	$author.create text
    ask
end

def edit
	puts "Enter the note id: "
	note_id = gets.chomp.to_i

	puts "Please enter the new note: "
	new_note = gets.chomp

	$author.edit note_id, new_note
    ask
end

def list
	puts $author.list
    ask
end

def name 
    puts $author.name
    ask
end

def delete
    puts "Enter note id to delete: "
    note_id = gets.chomp.to_i

    print $author.delete note_id
    print " deleted"
    ask
end

def search
    puts "Enter a word to search: "
    search = gets.chomp

    puts "Searching..........."
    puts $author.search search

    ask
end



def ask
    puts
    puts "Do you wnat to perform another action?(y/n): "
    answer = gets.chomp.downcase
    puts
    
    if answer == 'y'
        puts "What do you want to do?: "
        puts "Choose from the following: "
        print '> create < ',' > edit < ',' > list < ',' > delete < ',' > search < '
        puts
        puts

        action = gets.chomp.downcase

        case action
        when 'create' then create
        when 'edit' then edit
        when 'list' then list
        when 'delete' then delete
        when 'search' then search
        else ask
        end

    end

end

start

