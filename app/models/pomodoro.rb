class Pomodoro < Timer
  set_callback(:validation, :before) do
    self.duration = 25*60
    Slack::Post.post "Début de la tomate!", '#tomates'
  end
end
