App = React.createClass
  mixins: [Actions]

  getInitialState: -> sentence: ["Hare Krishna", "Hare Rama"]

  render: ->
    <Translate>
      <Sentence>{ @state.sentence[0] }</Sentence>
      <TextBlock next={@next}></TextBlock>
    </Translate>
