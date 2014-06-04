class Segment

  attr_accessor :key, :translation, :language

  def initialize(key, translation, language)
    @key = key.remove_comments
    @translation = translation.remove_comments.replace_escaped
    @language = language
  end

  def is_comment?
    @key == nil
  end
end