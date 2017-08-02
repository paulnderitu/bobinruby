
class Bob

  attr_reader :remark

  def initialize(remark)
    @remark = remark
  end

  def silence?
    !remark.match(/\w/)
  end

  def shout?
    remark.upcase == remark && remark.match(/[A-z]/)
  end

  def question?
    remark.end_with? '?'
  end
end
