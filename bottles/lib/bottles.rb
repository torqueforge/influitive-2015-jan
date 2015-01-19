# Feel free to delete the instructions once you get going
require 'byebug'
puts instructions(__FILE__)

class Bottles
  def verses(from, to)
    str = ""
    (from..to).each do |i|
      str += <<-VERSES
#{verse(from)}
VERSES
    end
    str.chomp!
  end

  def verse(num)
    <<-VERSE
#{first_line(num)}
#{second_line(num)}
VERSE
  end

private
  def first_line(num)
    if num == 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{pluralized(num)} of beer on the wall, #{pluralized(num)} of beer."
    end
  end

  def second_line(num)
    if num == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{take_quantity(num)} down and pass it around, #{pluralized(num - 1)} of beer on the wall."
    end
  end

  def take_quantity(num)
    if (num == 1)
      "it"
    else
      "one"
    end
  end

  def pluralized(num)
    if (num == 1)
      "1 bottle"
    elsif (num == 0)
      "no more bottles"
    else
      "#{num} bottles"
    end
  end
end
