class Properties
  $file_path = '../../resources/properties.txt'

  def get_properties(name)
    file = File.new($file_path, 'r')
    name+='='
    while (line = file.gets)
      if line.include? name
        result = line.sub(name,'').sub("\n",'')
      end
    end
    file.close
   return result
  end

end