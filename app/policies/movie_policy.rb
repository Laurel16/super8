class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

   def index?
    true
  end

  def create?
    user_is_admin?
  end

  def new?
    user_is_admin?
  end

  def update?
    user_is_admin?
  end

  def show?
    true
  end

  def destroy?
 user_is_admin?
  end

  private

  def user_is_admin?
   user.admin
  end

end
