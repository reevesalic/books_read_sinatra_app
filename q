
[1mFrom:[0m /home/reevesalic/Development/code/books_read_sinatra_app/app/controllers/books_controller.rb:9 self.GET /books:

     [1;34m4[0m:      [1;34m#READ[0m
     [1;34m5[0m:      get [31m[1;31m'[0m[31m/books[1;31m'[0m[31m[0m [32mdo[0m
     [1;34m6[0m:        [32mif[0m !logged_in?
     [1;34m7[0m:          redirect [31m[1;31m'[0m[31m/[1;31m'[0m[31m[0m
     [1;34m8[0m:        [32melse[0m
 =>  [1;34m9[0m:         binding.pry
    [1;34m10[0m:          @books = [1;34;4mBook[0m.all
    [1;34m11[0m:          
    [1;34m12[0m:          erb [33m:[1;33m'[0m[33m/books/index[1;33m'[0m[33m[0m
    [1;34m13[0m:        [32mend[0m
    [1;34m14[0m:        sorted_array = array.sort

