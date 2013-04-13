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
        @app.updateDOM new IndexView()

    product: (id) ->
        ProductView = require 'views/product'
        @app.updateDOM new ProductView()

main = new MainRouter({pushState: true})
module.exports = main
