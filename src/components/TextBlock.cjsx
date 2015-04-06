TextBlock = React.createClass
  render: ->
    <div>
      <PlainEditable className="PTE" noTrim/>
      <div className="textblock__buttons">
        <button onClick={@props.next}>Наступны</button>
        <button onClick={@props.next}>Захаваць</button>
      </div>
    </div>
