var express = require('express');
var bodyParser = require('body-parser');
var app = express();

app.all('/*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "POST, GET");
    next();
    
});


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
    
    {
        
        id: 1,
        title: "Android Studio Tutorial For Beginners",
        description: "Learn how to install Android Studio and go through tutorial to  build your first app",
        iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/F-k5gwz_91o" frameborder="0" allowfullscreen></iframe>',
        thumbnail:"https://www.gatesms.eu/img/android.png",
        
    },
    
    {
        id: 2,
        title: "Android Mobile App",
        description: "Learn how to design welcome screen in Adroid Studio",
        thumbnail: "https://www.android.com/static/img/history/features/feature_donut_2.png",
        iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/F-k5gwz_91o" frameborder="0" allowfullscreen></iframe>'
        
    }
    
    
    ];
    
    
    app.get('/tutorials', function(req,res) {
    console.log("GET from server");
    res.send(tutorials);
});    

app.listen(5566);