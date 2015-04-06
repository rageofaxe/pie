App = React.createClass
  mixins: [Actions]

  getInitialState: -> sentence: ["Hare Krishna1", "Hare Rama"]

  render: ->
    <div>
      <MainBar>
          <Menu/>
      </MainBar>

      <Translate>
        <Title>Krishnaloka</Title>
        <Sentence>{ @state.sentence[0] }</Sentence>
        <TextBlock next={@next}></TextBlock>
      </Translate>
    </div>
