class MainRouter extends Backbone.Router
    routes:
        '': 'index'
        ':id': 'index'
        'product/:id': 'product'

    initialize: ->
        AppView = require 'views/app'
        @app = new AppView()

    index: (id) ->
        IndexView = require 'views/index'
        
        if !@app.currentView or @app.currentView != @indexView
            @indexView = new IndexView()
            @app.changeDOM @indexView
        else
            @app.updateDOM @indexView

    product: (id) ->
        ProductView = require 'views/product'
        @productView = new ProductView()

        @app.changeDOM @productView

main = new MainRouter({pushState: false})
module.exports = main
