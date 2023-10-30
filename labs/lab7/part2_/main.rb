# freeze_string_literal: true

# Class for an ordinary window
class Plank
  def initialize(_l, _w)
    @leng = _l
    @widt = _w
  end

  def square
    @leng * @widt
  end

  def print
    puts 'Параметры окна:'
    puts "Длина: #{@leng}" + "\nШирина: #{@widt}"
  end
end

# Class for an professional window
class Board < Plank
  alias :sq :square

  def initialize(_l, _w, _t)
    super(_l, _w)
    @thick = _t
  end

  def volume
    sq * @thick
  end

  def print
    super
    puts "Толщина: #{@thick}"
    puts "Объем: #{volume}"
  end
end
