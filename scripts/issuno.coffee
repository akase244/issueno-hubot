module.exports = (robot) ->
    robot.hear /#([0-9])/i, (msg) ->
        msg.send "https://pjm1.intra.gvm.local/issues/" + msg.match[1]
