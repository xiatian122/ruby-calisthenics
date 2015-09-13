class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
      def foo
      	@foo
      end

      def foo=(n)
      	if @foo_history == nil
      		@foo_history = [nil]
      		@foo=n
      	else
      		@foo_history << @foo
      		@foo=n
      	end
      	
      	@foo
      end

      def foo_history
      	@foo_history
      end

      
    }
  end
end
