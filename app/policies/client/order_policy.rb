class Guest::OrderPolicy < ApplicationPolicy
  # [...]
  class Scope < Scope
    def resolve
      scope.where(client: client)
    end
  end

  def new?
    return true
  end


  def show?
    return true
  end


  def create?
    return true
  end
end
