Meteor.methods
  sendEmail: (name, email, phone, message)->
    @unblock()
    Email.send({
      form: 'rajanand@hacktivist.in'
      to: email
      subject: "Project Velan contact us form"
      text: message + " name: " + name + " phone: "+ phone
    })

