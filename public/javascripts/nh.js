/*----------------------------------------------------*/
/* onDomReady                                         */
/*----------------------------------------------------*/

window.addEvent('domready', function() {
  try {
    setupContact();
    setupTools();
  } catch (e) {}
});



/*----------------------------------------------------*/
/* Contact                                            */
/*----------------------------------------------------*/

var setupContact = function() {
  setupContactAnimation();
  setupContactForms();  
};

var setupContactAnimation = function() {
  var form = new Fx.Slide('form', {
    duration: 'short',
    transition: Fx.Transitions.Pow.easeOut
  });
  form.hide();
  
  $('contact_me').addEvent('click', function(e){ 
    new Event(e).stop();
    this.toggleClass('on')
    form.toggle();   
  });
}

var setupContactForms = function() {
  var inputs = $('form').getElements('input'); 
  var textareas = $('form').getElements('textarea');
  inputs.extend(textareas);

  inputs.each(function(el, index){
    el.initial_val = el.value;
    el.addEvent('focus', function(e){ this.value = '';});
    el.addEvent('blur', function(e){ 
      new Event(e).stop();
      if (this.value == ''){
        this.value = this.initial_val;
      };
    });
  })
};



/*----------------------------------------------------*/
/* Tools                                              */
/*----------------------------------------------------*/

var setupTools = function() {
  $('pop').addEvent('click', function(e){ 
    
    $('modal').toggleClass('hide');
    $('graph').toggleClass('hide'); 
  });
};