# Consolidates and simplifies commonly used logic

module LogicHelper

  def couple?

    if params[:user] == 'couple' || params[:user] == 'new'
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

  def new?

    if params[:user] == 'new'
      true
    else
      false
    end

  end


# Extension of common logic to <body> classes for use in CSS
# ---------------------------------------------------------------------------

  def user
    if new?
      'new couple'
    elsif couple?
      'couple'
    else
      'guest'
    end
  end


end