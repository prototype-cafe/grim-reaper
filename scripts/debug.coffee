# Description:
#   A script for debugging grim-reaper-next
#

module.exports = (robot) ->

  loaded_time = Date()
  boot_message_done = false

  robot.hear /.*/i, (res) ->
    if !boot_message_done
      res.send "Hi, I'm reloaded at #{loaded_time}"
      boot_message_done = true

  robot.respond /(reload|reboot|exit)/, (res) ->
    res.send "I'll be #{res.match[1]}ed in several seconds..."
    setTimeout ->
      process.exit(1)
      1000
