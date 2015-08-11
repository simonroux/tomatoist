class ShortBreak < Timer
  set_callback(:validation, :before) do
    self.duration = 5*60
    Slack::Post.post "Shortbreak!", '#tomates'
  end
end
