Actions =
  next: ->
    console.log("update")
    newState = @state.sentence
    newState[0] = newState[1]
    @setState(sentence: newState)
