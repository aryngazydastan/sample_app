module ApplicationHelper
#объявили класс, который возвращает только заголовок, 
#если возникли проблемы с функцией provide
	def full_title(page_title)

    base_title = "Ruby on Rails Tutorial Sample App"
#прописывается if функция, которая проверяет наличие базового заголовка и отображает его   	
    	if page_title.empty?
      		base_title
      		#проверяет присутствие базового заголовока и заголовка страницы и отображает его
    		else
     	 	"#{base_title} | #{page_title}"
    	end
  
  	end
end
