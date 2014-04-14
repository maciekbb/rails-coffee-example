# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$("#load_articles").on 'click', ->
		$.ajax '/articles',
			dataType: "json"
			success: (articles) ->
				for article in articles
					$("#articles").append("<h3>#{article.title}</h3><p>#{article.content}</p>")


$(document).ready(ready)
$(document).on('page:load', ready)