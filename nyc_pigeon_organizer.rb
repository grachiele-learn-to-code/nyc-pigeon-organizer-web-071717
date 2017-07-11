def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |cgl, cgl_hash|
    cgl_hash.each do |cgl_key, names|
      names.each do |name|
        if pigeon_list.keys.include?(name) == false
          pigeon_list[name] = {}
        end
        if pigeon_list[name].include?(cgl) == false
          pigeon_list[name][cgl] = []
        end
        if pigeon_list[name][cgl].include?(cgl_key.to_s) == false
          pigeon_list[name][cgl] << cgl_key.to_s
        end
      end
    end
  end
  pigeon_list
end
