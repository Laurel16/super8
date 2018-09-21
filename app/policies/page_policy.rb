
  class PagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def about?
    true
  end



  def credits?
    true
  end

end
