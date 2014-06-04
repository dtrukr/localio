class Term

  attr_accessor :values, :keyword

  def initialize(keyword)
    @keyword = keyword
    @values = Hash.new
  end

  def is_comment?
    /\[comment\]/i.match(@keyword).nil? == false
  end

end