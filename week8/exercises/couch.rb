class Couch
	def initialize pillows, cushions, dogs
		@pillows = pillows
		@cushions = cushions
    @dogs = dogs
	end

  {pillows: :colors,
    cushions: :colors,
    dogs: :names}.each do |k,v|
      define_method "how_many_#{k}?" do
        instance_variable_get("@#{k}").count
      end
      define_method "#{k.to_s.chop}_#{v}" do
        instance_variable_get("@#{k}").map &:to_s
      end
  end


  def method_missing m, *args, &block
    puts "Did you mean #{self.methods.find{|k| k.to_s.include? m.to_s}}" if any_methods
    unless any_methods
      self.class.send(:define_method, m) do
        yield if block_given?
      end
      send(m)
    else
      super
    end
  end

  def any_methods
    self.methods.any?{|k| k.to_s.include? m.to_s}
  end

  def respond_to? m
    true unless any_methods
    super
  end


end