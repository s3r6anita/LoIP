# frozen_string_literal: true

def check_pow5(num)
  return Math.log(num, 5).round(4) == Math.log(num, 5).round if num.positive?

  false
end

# NumberController
class NumberController < ApplicationController
  def view
    set_params
    seq = calc_list(@a_list)
    @result = seq.uniq.sort_by(&:count).reverse
    @count = seq.length
    respond_to do |format|
      format.html
      format.js
    end
  end

  def input; end

  def set_params
    n = params[:n].to_i
    @a_list = params[:a]&.split&.map(&:to_i)&.take n
  end

  def calc_list(a_list)
    seq = []
    a_list&.each_index do |index|
      seq_current = []
      a_list[index..].each do |num|
        break unless check_pow5(num)

        seq_current += [num]
        seq << seq_current
      end
    end
    seq
  end
end
