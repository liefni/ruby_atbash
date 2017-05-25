class AtbashCypher
  def original_chars
    @original_chars
  end
  def original_chars=(value)
    @original_chars = value
    @lookup = nil
  end

  def replacement_chars
    @replacement_chars
  end
  def replacement_chars=(value)
    @replacement_chars = value
    @lookup = nil
  end

  def decrypt(value)
    create_decrypt_lookup if @decrypt_lookup.nil?

    result = ''
    value_chars = value.chars
    value_chars.each do |c|
      replacement_char = @decrypt_lookup[c]
      replacement_char ||= c
      result += replacement_char
    end
    result
  end

  private
  def create_decrypt_lookup
    @decrypt_lookup = {}
    original = @original_chars.chars
    replacement = @replacement_chars.chars
    (1..(replacement.length - 1)).each do |i|
      @decrypt_lookup[replacement[i]] = original[i] unless i >= @original_chars.length
    end
  end
end