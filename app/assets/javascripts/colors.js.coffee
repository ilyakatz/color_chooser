class ColorUpdater

  @setup: ->
    setInterval(new ColorUpdater().update, 3000);
    new ColorUpdater().update()

  update: ->
    $.getJSON("/colors.json",   (data) ->
      if data.color
        $("body").css("background-color", "rgb(#{data.color[0]},#{data.color[1]},#{data.color[2]}")
    )

$ ->
  $("#start_ajax").on("click", ->
    ColorUpdater.setup()
  )
