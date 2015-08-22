Template.share.events
  "click .facebook":(e) ->
    e.preventDefault()
    window.open("https://www.facebook.com/sharer/sharer.php?u="+escape(window.location.href)+"&t="+document.title, '', "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=500,width=650,top=180,left=380")
return false


