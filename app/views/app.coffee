View = require 'lib/view'
Template = require 'views/templates/app'

module.exports = class AppView extends View
    autoRender: on
    template: Template
    currentView: null

    el: 'body.application'

    afterRender: ->
        @container = $('#appContainer')

    changeDOM: (view) ->
        if @currentView
            @currentView.destroy =>
                @renderNewView(view)
        else
            @renderNewView(view)

    updateDOM: (view) ->
        @updateView(view)

    updateView: (view) ->
        console.log 'update'

        @currentView = view
    
    renderNewView: (view) ->
        @renderContainer view.render(), @container
        @currentView = view