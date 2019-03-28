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

# this works and builds the name and info but then ends, doesnt do the whole array of names

  name_array.each do |name|
    data.each do |element, element_value|
      element_value.each do |attribute, attribute_value|
        attribute_value.each do |names|
          if names == name
            if pigeon_list.length > 0 && pigeon_list[name].has_key?(element)
              pigeon_list[name][element] << attribute.to_s
            elsif pigeon_list.has_key?(name)
              pigeon_list[name] = pigeon_list[name].merge({element=> [attribute.to_s]})
            else
              pigeon_list[name]= {element=> [attribute.to_s]}
            end
          


          end
        end
      end
    end
    binding.pry
    return pigeon_list
  end







end
