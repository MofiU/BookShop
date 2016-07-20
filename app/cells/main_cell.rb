class MainCell < Cell::ViewModel
  def show
    render
  end

  def footer
    render
  end

  def header_bottom
    render
  end

  def header_top
    @current_user = model
    render
  end

  def slider
    render
  end
  def slider2
    render
  end

end
