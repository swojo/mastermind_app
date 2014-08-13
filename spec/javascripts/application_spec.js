//= require application



describe('Button Row', function(){
 
  it('adds letter on button click', function(){
    fixture.set("<input id='code_code' />");

    var colors = new Colors();
    var mockEvent = { target : { id : "Blue" }};

    colors.onClick(mockEvent);
    expect(colors.text.val()).toBe("B");

  });
});   

describe('Mastermind', function(){

  beforeEach(function(){
    $.fx.off;
    fixture.set("<div id='messages'><li>ROYG</li></div>")
  });
 
  it('hides solutions', function(){
    var mastermind= new Mastermind();
    expect(mastermind.message_array.is(":hidden")).toBe(true);
  });

  it('shows a solution on click', function(){
    var mastermind = new Mastermind();
    mastermind.onClick();
    expect(mastermind.message_array.is(":hidden")).toBe(false);
  });

  it('increases count on click', function(){
    var mastermind = new Mastermind();
    mastermind.onClick();
    expect(mastermind.count).toBe(1);
  });

});

