
class Ppl::Application::Command

  attr_accessor :name
  attr_accessor :description

  def execute
    raise NotImplementedError
  end

end

