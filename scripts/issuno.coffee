_ = require('underscore')
module.exports = (robot) ->
    robot.hear /#(\d{1,5})/ig, (msg) ->
        links = ''
        msgs = _.uniq(msg.match)
        for i in [0..(msgs.length - 1)]
            links += 'チケットへのリンク : https://pjm1.intra.gvm.local/issues/' + msgs.replace(/#/, '') + "\n"
        msg.send links
