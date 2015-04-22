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
