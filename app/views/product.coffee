View = require 'lib/view'
Template = require 'views/templates/product'

module.exports = class ProductView extends View
    template: Template
    className: 'productView'

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