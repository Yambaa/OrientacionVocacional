module ApplicationHelper

  def nulo?(valor)
    if valor
      valor
    else
      " -- "
    end
  end

end
