Meteor.methods
  sendEmail: (name, email, phone, message)->
    check([name, email, message], [String])
    @unblock()
    Email.send({
      to: email
      form: 'rajanand@hacktivist.in'
      subject: "Project Velan contact us form"
      text: message + 'name: ' + name + ' phone: '+ phone
    })

