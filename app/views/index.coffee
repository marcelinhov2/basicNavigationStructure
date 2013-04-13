View = require 'lib/view'
Template = require 'views/templates/index'

module.exports = class IndexView extends View
    template: Template
    className: 'indexView'

    beforeRender: ->
        @$el.css('opacity', 0)

    afterRender: ->
        @$el.animate
            opacity: 1

    dispose: (callback) ->
        @$el.animate
            opacity:0
        , =>
            callback?()