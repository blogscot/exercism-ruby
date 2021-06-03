class FlattenArray
  def self.flatten(array)
    array.each_with_object([]) do |v, obj|
      if v.is_a?(Array)
        obj.concat(flatten(v))
      else
        obj << v unless v.nil?
      end
    end
  end
end
