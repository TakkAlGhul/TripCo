$(document).ready(function(){
  $('.sidenav').sidenav({
    edge: 'right',
    draggable: true,
    inDuration: 250,
    outDuration: 200,
    onOpenStart: null,
    onOpenEnd: null,
    onCloseStart: null,
    onCloseEnd: null,
    preventScrolling: true
  });
});
