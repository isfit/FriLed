module ApplicationHelper
 
 
 def format(str)
    bc = BlueCloth.new(h(str))
    bc.to_html
 end 

end
