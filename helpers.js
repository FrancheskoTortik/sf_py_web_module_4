advise_url = "https://api.adviceslip.com/advice"
 $("#header").click( function(){
    
    $.getJSON(advise_url, function(data){
        console.log(data)
        advice = data['slip']['advice']
        set_secret_message(advice)
    })

 })

 function set_secret_message(msg){
    d = $("#header")
    d.html(msg)
    d.css('color', 'green')
 }
 $("#secret")