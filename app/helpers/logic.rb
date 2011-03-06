# Consolidates and simplifies commonly used logic

module LogicHelper

  def couple?

    if params[:user] == 'couple' || params[:user] == 'trial'
      true
    else
      false
    end

  end

  def guest?

    if params[:user] == 'guest'
      true
    else
      false
    end

  end

  def trial?

    if params[:user] == 'trial'
      true
    else
      false
    end

  end

# Extension of common logic to <body> classes for use in CSS
# ---------------------------------------------------------------------------

  def user
    if trial?
      'trial couple'
    elsif couple?
      'couple'
    else
      'guest'
    end
  end

end