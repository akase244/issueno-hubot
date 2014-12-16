module.exports = (robot) ->
    robot.hear /#(\d{1,5})(\W|$)/ig, (msg) ->
        links = ''
        for i in [0..(msg.match.length - 1)]
            links += 'チケットへのリンク : https://pjm1.intra.gvm.local/issues/' + msg.match[i].replace(/#/, '') + "\n"
        msg.send links

            
