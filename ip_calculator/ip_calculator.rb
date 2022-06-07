def ipsBetween(start, ending)
  ip_to_i = -> (ip_string) do
    ip_string.split('.').map.with_index do |v, i|
      v.to_i * (256 ** (3 - i))
    end.reduce(:+)
  end

  ip_to_i.call(ending) - ip_to_i.call(start)
end
