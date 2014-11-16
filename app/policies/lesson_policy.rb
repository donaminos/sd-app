class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  
  def index?
    true
  end

  def show?
    true
  end
  
  def move_up?
    #false
    isadmin
  end
  
  def move_down?
    #false
    isadmin
  end

end
