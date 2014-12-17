module.exports = (robot) ->
    robot.hear /#(\d{1,5})/ig, (msg) ->
        links = ''
        msg.match.unique()
        for i in [0..(msg.match.length - 1)]
            links += 'チケットへのリンク : https://pjm1.intra.gvm.local/issues/' + msg.match[i].replace(/#/, '') + "\n"
        msg.send links

    Array::unique = ->
        output = {}
        output[@[key]] = @[key] for key in [0...@length]
        value for key, value of output
