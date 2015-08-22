Template.newProject.helpers
  projects: ->
    Project.find()
Template.newProject.events
  "submit #newProject":(e,t) ->
    e.preventDefault()
    name = t.$('#name').val().trim()
    village = t.$('#village').val().trim()
    district = t.$('#district').val().trim()
    state = t.$('#state').val().trim()

    if name and village and district and state
      Meteor.call('createProject', name,village, district, state, (err,res)->
        if err
          console.log err
        else
          t.$('#newProject')[0].reset()
      )
    else
      alert('Please provide all the necessary information.')

  'click #delete':(e,t)->
    if confirm("Are you sure?")
      Project.remove(@_id)
     	


