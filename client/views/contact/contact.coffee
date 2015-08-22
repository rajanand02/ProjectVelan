Template.contact.events
  "submit  #contactForm":(e,t) ->
    e.preventDefault()
    name = t.$('#name').val().trim()
    email = t.$('#email').val().trim()
    phone = t.$('#phone').val().trim()
    message = t.$('#message').val().trim()
    if name and email and phone and message
      Meteor.call('sendEmail', name, email, phone, message, (err,res)->
        if err
          console.log err
        else
          alert('Email sent successfully.')
      )


