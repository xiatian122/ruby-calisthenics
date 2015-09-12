class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    if @calories < 200
      return true
    end
  end
  def delicious?
    # your code here
    return true
  end
  def name
    @name
  end
  def calories
    @calories
  end
  def calories=(n)
    @calories=n 
  end
  def name=(n)
    @name =n
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    super(flavor +" jelly bean", 5)
    @flavor = flavor
  end
  def flavor
    @flavor
  end
  def flavor=(n)
    @flavor=n
  end
  def delicious?
    if @flavor == "licorice"
      return false
    else
      return true
    end
  end
end
