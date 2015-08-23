Meteor.methods
  sendEmail: (name, email, phone, message)->
    @unblock()
    Email.send({
      form: 'rajanand@hacktivist.in'
      to: email
      subject: "Project Velan contact us form"
      text: message + " name: " + name + " phone: "+ phone
    })

  createProject: (name, village, district, state)->
    apiKey = Random.id([18])
    secretKey = Random.secret([25])
    Project.insert
      name: name
      village: village
      district: district
      state: state
      apiKey:apiKey 
      secretKey: secretKey
      owner: @userId
      createdAt: Date.now()



