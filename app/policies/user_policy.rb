class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

   def update?

   user_is_admin?
  end

  def about?
    true
  end


private

 def user_is_admin?
   user.admin
  end
end










