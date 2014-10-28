class Worker

  def Worker.work
      yield if block_given?
  end

end
