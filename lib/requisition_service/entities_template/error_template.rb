class ErrorTemplate < Hanami::Entity
  def self.messages(messages = nil)
    messages = [messages] if messages && !messages.is_a?(Array)

    { error: { messages: messages } }.to_json
  end
end
