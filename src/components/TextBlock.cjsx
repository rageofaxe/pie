TextBlock = React.createClass
  getInitialState: -> text: ""

  #change: (event) ->
  #  @setState(text: event.target.innerText.replace("a", "B"))

  render: ->
    <div>
      <div contentEditable className="PlainEditable" onInput={@change} >
        {@state.text}
      </div>
      <div className="textblock__buttons">
        <button onClick={@props.next} style={{display: 'none'}}>Наступны</button>
        <button onClick={@props.next} style={{display: 'none'}}>Захаваць</button>
        <span className="next-sentence">Наступны</span>
        <span className="save-sentence">Захаваць</span>
      </div>
    </div>
