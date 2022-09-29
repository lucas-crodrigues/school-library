class Nameable
  def correct_name
    raise NotImplemtedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
