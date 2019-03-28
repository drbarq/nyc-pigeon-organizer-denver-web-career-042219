require 'pry'


#first get each unique name in name_array
#second build new hash for each name
=begin
def nyc_pigeon_organizer(data)

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
      binding.pry
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
    return pigeon_list
  end



end
=end

#this is slick, it builds it step by step. using boolean and closed if statements to step through the hash.  it iliminates the need for
#an addtional name array like I Was building
#does this answer only work best for the way this data is structured?

def nyc_pigeon_organizer(data)

  pigeon_list = {}

  data.each do |element, element_value|
    element_value.each do |attribute, attribute_value|
      attribute_value.each do |names|
      #  binding.pry
        if !pigeon_list.has_key?(names)
        #  binding.pry
          pigeon_list[names] = {}
        end

        if !pigeon_list[names].has_key?(element)
          pigeon_list[names][element] = []
        end

        if !pigeon_list[names][element].include?(attribute)
          pigeon_list[names][element] << attribute.to_s
        #  binding.pry
        end

      end
    end
  end
#  binding.pry
  pigeon_list
end



# this works and builds the name and info but then ends, doesnt do the whole array of names
=begin
  name_array.collect do |name|
    data.each do |element, element_value|
      element_value.each do |attribute, attribute_value|
        attribute_value.each do |names|
          if names == name
            if name_hash.length > 0 && name_hash[name].has_key?(element)
              name_hash[name][element] << attribute.to_s
            elsif name_hash.has_key?(name)
              name_hash[name] = name_hash[name].merge({element=> [attribute.to_s]})
            else
              name_hash[name]= {element=> [attribute.to_s]}
            end
          end
        end
      end
    end
   name_hash
   binding.pry
  end
binding.pry
=end

=begin
def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end
=end
