

class SeenItView
	def welcome
		system 'cls'
		system 'clear'
		puts "
                          ``
                    `+#@@@@@@@+;
               `'@@@@@@@@@@@@@@@@@@+,
             :@@@@@@@@@@@+;@@@@@@@@@@@@
             @@@@@@@#;        .'#@@@@@@;
             @@@:`                 `#@@@
           .'@@@                     @@@,`
       ##@@@@@@#                     @@@@@@@#,
       @@@@@@@@`     ,@@@      ###+  '@@@@@@@@
      ,@@@@@:       @@@@@      @@@@    `'@@@@@
      @@@,        ;@@@@@@      @@@@        @@@:
 `'@@@@@@        :@@@@@@:      @@@@        ;@@@@@@:
 @@@@@@@@        @@@@@@,       @@@@         @@@@@@@@
 @@@@@@#        +@@@@@         @@@@         `#@@@@@@
 @@@            @@@@@          @@@@             .@@@
 @@@            @@@@'          @@@@             :@@#
 @@@            @@@@:          @@@@             ;@@+
 @@@            @@@@'          @@@@             @@@;
 @@@.           @@@@@          @@@@             @@@:
 #@@'           @@@@@          @@@@             @@@.
 ;@@@           .@@@@@         @@@@             @@@
 .@@@            @@@@@#        @@@@            `@@@
  @@@            `@@@@@#       @@@@            ;@@@
  @@@:            #@@@@@:      @@@@            @@@:
  +@@@             @@@@@@      @@@@            @@@
   @@@              @@@@@@     @@@@           :@@@
   @@@'              @@@@@,    @@@@           @@@'
   +@@@               @@@@@    @@@@          `@@@
    @@@,              @@@@@    @@@@          @@@@
    #@@@              ,@@@@#   @@@@          @@@`
     @@@,              @@@@@   @@@@         @@@@
     #@@@              @@@@@   @@@@        `@@@.
      @@@'             @@@@@   @@@@        @@@@
      +@@@            .@@@@#   @@@@       '@@@
       @@@@           @@@@@    @@@@       @@@+
       :@@@'         ;@@@@@    @@@@      @@@@
        @@@@.       ,@@@@@.    @@@@     #@@@`
         @@@@      #@@@@@#     @@@@    :@@@'
         `@@@@   '@@@@@@#      @@@@   `@@@@
          ;@@@@`````````       ````   @@@@
           #@@@@                     @@@@
            @@@@#                   @@@@`
             @@@@#                 @@@@,
              @@@@@               @@@@.
               @@@@@            .@@@@,
                @@@@@          ;@@@@`
                 '@@@@'       @@@@@
                 `,@@@@@    ;@@@@@
                    @@@@@#:@@@@@:
                     '@@@@@@@@@
                       @@@@@@,
                         #@;                        "
		sleep(10)
    system 'cls'
    system 'clear'
	end

	def menu
		puts "+" + "-"*80 + "+"
		puts "|" + " "*80 + "|"
		puts "|" + " Welcome to your SeenIt database!".ljust(80) + "|"
		puts "|"  + " "*80 + "|"
		puts "|" + " What would you like to do?".ljust(80) + "|"
		puts "|" + "  * [D]: Display all films".ljust(80) + "|"
		puts "|" + "  * [S]: Display all seen films".ljust(80) + "|"
		puts "|" + "  * [U]: Display unseen films".ljust(80) + "|"
		puts "|" + "  * [G]: Display by genre".ljust(80) + "|"
		puts "|" + "  * [A]: Add new film".ljust(80) + "|"
		puts "|" + "  * [R]: Remove film".ljust(80) + "|"
		puts "|" + "  * [C]: Change status to seen".ljust(80) + "|"
    		puts "|" + "  * [X]: Exit SeenIt".ljust(80) + "|"
		puts "|" + " "*80 + "|"
		puts "+" + "-"*80 + "+"
		return gets.chomp
    system 'cls'
    system 'clear'
	end

  def display_heading_detailing
		puts "+" + "-"*80 + "+"
		puts "|" + " "*80 + "|"
	end

	def display_heading(title)
		system 'cls'
		system 'clear'
		display_heading_detailing
		puts "|" + " #{title}".ljust(80) + "|"
		puts "|" + " "*80 + "|"
	end

	def display(info_hash)
		puts "|" + "   Title: #{info_hash[:title]}".ljust(80) + "|"
		puts "|" + "   ID#: #{info_hash[:id]}     Rating: #{info_hash[:imdb_rating]}/10     Release year: #{info_hash[:year]}".ljust(80) + "|"
	  puts "|" + " "*80 + "|"
	end

  def display_genre(genre)
    puts "|" + "  #{genre[:id]} = #{genre[:name]}".ljust(80) + "|"
  end

	def display_footer
		puts "|" + " "*80 + "|"
		puts "+" + "-"*80 + "+"
	end

	def add
		system 'cls'
		system 'clear'
		film_details = []
		display_heading_detailing
		puts "|" + " Please enter the film's title:".ljust(80) + "|"
		film_details << gets.chomp
		puts "|" + " "*80 + "|"
		puts "|" + " Please enter the film's release year:".ljust(80) + "|"
		film_details << gets.chomp
		puts "|" + " "*80 + "|"
		puts "|" + " Please enter the film's IMDb rating:".ljust(80) + "|"
		film_details << gets.chomp
    # puts "|" + " "*80 + "|"
    # puts "|" + " Please enter the film's genre:".ljust(80) + "|"
    # film_details << gets.chomp
		display_footer
		return film_details
	end

	def remove
		display_heading_detailing
		puts "|" + " Please enter the ID# of the film you'd like to delete:".ljust(80) + "|"
		display_footer
		return gets.chomp
	end
end

hi = SeenItView.new
# hi.welcome
# hi.menu

# hi.display_heading("All")
# hi.display({:id => 56, :title => "Death at a Funeral", :year => 2007, :imdb_rating => "9.8"})
# hi.display_footer

# hi.remove

# hi.add

# puts "The lord of the rings: the return of the king".length
