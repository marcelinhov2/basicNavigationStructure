module.exports = class Utils
    showLoader: (callback) ->
        if $('#loader').css('display') isnt 'block'
            $('#loader').fadeIn 'fast', =>
                callback?()

    hideLoader: (callback) ->
        $('#loader').fadeOut 'slow', =>
            callback?()

    makeItFullScreen: (element) ->
        windowWidth = $(window).width()
        windowHeight = $(window).height()

        $(element).css('width', windowWidth)
        $(element).css('height', windowHeight)

    findObjectById: (source, id) ->
        i = 0
        id = parseInt id

        while i < source.length
            return source[i]  if source[i].id is id
            i++

    showScrollBar: ->
        $('body').css('overflow-y', 'auto')

    hideScrollBar: ->
        $('body').css('overflow-y', 'hidden')