module.exports = (robot) ->
    robot.hear /#([0-9]*)/i, (msg) ->
        msg.send msg.match.length
        msg.send "チケットへのリンク : https://pjm1.intra.gvm.local/issues/" + msg.match[1]
        #for i in [1..msg.match.length]
        #    msg.send "チケットへのリンク : https://pjm1.intra.gvm.local/issues/" + msg.match[i]

            
