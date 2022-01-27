module MyEnumerable
  def all?
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
    false
  end

  def filter
    return @list unless block_given?
    return @list if @list.length.zero?

    result = []
    @list.each do |num|
      block_test = yield(num)
      result.push(num) if block_test
    end
    result
  end
end
