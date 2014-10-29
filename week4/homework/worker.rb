module Worker

#  def Worker.work
#      yield if block_given?
#  end

   def self.work(*args)
       c = 0
       if args[0] == nil
          yield if block_given?
       else
          yield if block_given?
          yield if block_given?
          yield if block_given?
       end
   end
end
