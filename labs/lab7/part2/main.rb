# frozen_string_literal: true

# Class for an ordinary window
class Window
  def initialize(leng, width)
    @len = leng
    @wid = width
  end

  def square
    @len * @wid
  end
end

# Class for an professional window
class Blind < Window
  def initialize(leng, width, bld)
    @bld = true?(bld)
    super(leng, width)
  end

  def true?(str)
    str.downcase == 'true'
  end

  def blind?
    @bld ? true : false
  end
end
