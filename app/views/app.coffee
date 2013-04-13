View = require 'lib/view'
Template = require 'views/templates/app'

module.exports = class AppView extends View
    autoRender: on
    template: Template
    currentView: null

    el: 'body.application'

    afterRender: ->
        @container = $('#appContainer')

    updateDOM: (view) ->
        if @currentView
            @currentView.destroy =>
                @renderNewView(view)
        else
            @renderNewView(view)

    renderNewView: (view) ->
        @renderContainer view.render(), @container
        @currentView = view