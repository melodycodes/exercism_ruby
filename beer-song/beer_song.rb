class BeerSong
  def verse(num)
    return last_verse if num.zero?
    next_num = num - 1
    v = "#{num} #{plural_bot(num)} of beer on the wall, #{num} #{plural_bot(num)} of beer.\n"
    v << "Take #{next_num.zero? ? 'it' : 'one'} down and pass it around,"
    v << " #{next_num.zero? ? 'no more' : next_num} #{plural_bot(next_num)} of beer on the wall.\n"
  end

  def plural_bot(n)
    n == 1 ? 'bottle' : 'bottles'
  end

  def last_verse
    v = "No more bottles of beer on the wall, no more bottles of beer.\n"
    v << "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def verses(bound, start)
    (start..bound).map { |n| verse(n) }.reverse.join("\n") + "\n"
  end

  def sing
    verses(99,0)
  end
end
