require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!

  pigeon_list = Hash.new

  name_array = Array.new



  data.each do |element, element_value|
    element_value.each do |attribute, attribute_value|
      attribute_value.each do |names| # shovels over the name and then sets the variable equal to the uniq value
        name_array << names
        name_array = name_array.uniq

      end
    end
  end


  name_array.each do |name|
    data.map do |element, element_value|
      element_value.map do |attribute, attribute_value|
        attribute_value.find do |names|
          if names == name


            pigeon_list[name]= {element=> [attribute]}


          #  pigeon_list[name] = {element=> attribute}.merge.pigeon_list[name]
           pigeon_list[name]= {element=> [attribute]}.merge(pigeon_list[name])

          end
        end
      end
    end
  end


binding.pry




end
