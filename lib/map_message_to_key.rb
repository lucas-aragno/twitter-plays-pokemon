java_import 'java.awt.event.KeyEvent'

def map_message_to_key(message)
  return KeyEvent::VK_UP if message =~ /up/
  return KeyEvent::VK_DOWN if message =~ /down/
  return KeyEvent::VK_LEFT if message =~ /left/
  return KeyEvent::VK_RIGHT if message =~ /right/
end
