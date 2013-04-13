Utils = require 'lib/utils'

module.exports = class View extends Backbone.View
    autoRender: off
    disposed: no

    template: -> ''

    # Use bootstrap method instead of initialize
    bootstrap: ->

    initialize: ->
        @Utils = new Utils
        @bootstrap()
        @render() if @autoRender is on

    getRenderData: ->
        @model?.toJSON()

    renderContainer: (dom, container) ->
        container.append dom

    render: ->
        @beforeRender?()
        @$el.append @template(@getRenderData())
        @afterRender?()

        @$el

    dispose: (callback) ->
        callback?()

    destroy: (callback) ->
        @dispose =>
            @undelegateEvents()
            @$el.remove()
            callback?()