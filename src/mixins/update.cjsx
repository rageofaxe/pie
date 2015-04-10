Actions =
  next: ->
    console.log("update")
    newState = @state.sentence
    oldState = newState[0]
    newState[0] = newState[1]
    newState[1] = oldState
    @setState(sentence: newState)
