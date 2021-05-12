module Findable
  # def all
  #   self.all
  # end

  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
end