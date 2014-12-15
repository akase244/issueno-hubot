module.exports = (robot) ->
    robot.hear /#([0-9]*)/ig, (msg) ->
        for i in [0..msg.match.length]
            msg.send "チケットへのリンク : https://pjm1.intra.gvm.local/issues/" + msg.match[i]

            
