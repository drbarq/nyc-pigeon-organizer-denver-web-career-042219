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



  =begin
              if pigeon_list.has_key?(name)
                pigeon_list[name] = pigeon_list[name].merge({element=> [attribute]})
                binding.pry
              elsif pigeon_list[name].has_key?(element)
                pigeon_list[name][element] << attribute
                binding.pry
              else
                pigeon_list[name]= {element=> [attribute]}
                binding.pry
  =end




  name_array.each do |name|
    data.map do |element, element_value|
      element_value.map do |attribute, attribute_value|
        attribute_value.find do |names|
          if names == name





              if pigeon_list[name].has_key?(element)
                binding.pry
                pigeon_list[name][element] << attribute

              elsif pigeon_list.has_key?(name)
                pigeon_list[name] = pigeon_list[name].merge({element=> [attribute]})
                binding.pry
              else
                pigeon_list[name]= {element=> [attribute]}
                binding.pry



            end

          #  pigeon_list[name] = {element=> attribute}.merge.pigeon_list[name]
        #   pigeon_list[name]= pigeon_list[name])

          end
        end
      end
    end
  end


binding.pry




end
