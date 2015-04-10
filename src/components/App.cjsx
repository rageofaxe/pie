App = React.createClass
  mixins: [Actions]

  getInitialState: -> sentence: ["Hare Krishna", "Hare Rama"]

  getDefaultProps: ->
    source: "http://date.jsontest.com/"

  tick: ->
    $.get @props.source, ((result) ->
      @setState(result: result.time)
    ).bind(@)
    return

  render: ->
    <div>
      <MainBar>
        <Menu/>
      </MainBar>

      <Translate>
        <Title>Krishnaloka</Title>
        <Sentence>{ @state.result }</Sentence>
        <TextBlock next={@tick}></TextBlock>
      </Translate>
    </div>
