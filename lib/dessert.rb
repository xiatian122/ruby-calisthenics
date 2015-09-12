class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    if @calories < 200 && delicious?
      return true
    end
  end
  def delicious?
    # your code here
  end
  def name
    @name
  end
  def calories
    @calories
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
  end
end
