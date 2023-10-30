# frozen_string_literal: true

def intg(lil, uil, num, &block)
  step = (uil - lil) / num
  summa_func = 0
  x = lil + step / 2 # (step / 2 give more accuracy)
  (0...num).each do # (more accuracy then ..)
    summa_func += block.call x
    x += step
  end
  (uil - lil) / num * summa_func
end

# def intg1(lil, uil, num)
#   step = (uil - lil) / num
#   summa_func = 0
#   x = lil + step / 2 # (step / 2 give more accuracy)
#   (0...num).each do # (more accuracy then ..)
#     summa_func += yield x
#     x += step
#   end
#   (uil - lil) / num * summa_func
# end

# def func_sin
#   Math.sin(x) / x
# end

# def func_tan
#   ath.tan(x + 1) / (x + 1)
# end
