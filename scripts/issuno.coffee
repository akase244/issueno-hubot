module.exports = (robot) ->
    robot.hear /#([0-9]*)/i, (msg) ->
        num for msg.send "チケットへのリンク : https://pjm1.intra.gvm.local/issues/" + msg.match[num] in [1..msg.match.length]
            
