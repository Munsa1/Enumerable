module MyEnumerable
  def all?
<<<<<<< HEAD
    @list.each do |num|
      return true unless block_given?

      block_test = yield(num)
      return false unless block_test
    end
    true
  end

  def any?
    @list.each do |num|
      return true unless block_given?

      block_test = yield(num)
      return true if block_test
    end
=======
    each { |num| return false unless yield num }
    true
  end

  def any?
    each { |num| return true if yield num }
>>>>>>> 537f1d6d0c6b5706c8cdc687b4b40c180c5c1e9a
    false
  end

  def filter
<<<<<<< HEAD
    return @list unless block_given?
    return @list if @list.length.zero?

    result = []
    @list.each do |num|
      block_test = yield(num)
      result.push(num) if block_test
    end
    result
=======
    arr = []
    each { |num| arr.push(num) if yield num }
    arr
>>>>>>> 537f1d6d0c6b5706c8cdc687b4b40c180c5c1e9a
  end
end