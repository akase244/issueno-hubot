module.exports = (robot) ->
    robot.hear /#[0-9]+/ig, (msg) ->
        links = ''
        for i in [0..(msg.match.length - 1)]
            #msg.send "チケットへのリンク : https://pjm1.intra.gvm.local/issues/" + msg.match[i].replace(/#/, '')
            links += 'チケットへのリンク : https://pjm1.intra.gvm.local/issues/' + msg.match[i].replace(/#/, '') + "\n"
        msg.send links

            
