class SearchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

   def index?
    true
  end

  def search?
    true
  end




  private

  def user_is_admin?
   user.admin
  end

end
