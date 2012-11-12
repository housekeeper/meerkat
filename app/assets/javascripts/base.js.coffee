$ ->
  $(".subnavbar").find("li").each (i) ->
    mod = i % 3
    $(this).addClass "subnavbar-open-right"  if mod is 2