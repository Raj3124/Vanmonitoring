

        $(".error").click(function(){
        $.bootstrapGrowl('You Got Error',{
            type: 'danger',
            delay: 2000,
        });
    });   

var MapPoints = [];
        var lats = [];
        var longs = [];
        function initialize() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 18
            });
            var config = {
                apiKey: "AIzaSyCd18TubxogItKjriyW1pMeU_FnaLJnRLM",
                authDomain: "swachbharat-e438a.firebaseapp.com",
                databaseURL: "https://swachbharat-e438a.firebaseio.com",
                projectId: "swachbharat-e438a",
                storageBucket: "swachbharat-e438a.appspot.com",
                messagingSenderId: "674124402508"
            };
            firebase.initializeApp(config);
            var newPlayer;
            var myref = firebase.database().ref("Driver").orderByKey();



            myref.on("value", function (data, prevChildKey) {
                if (data.val() === null) {
                    alert("No vehicle on duty");
                } else {
                    data.forEach(
                            function (childSnapshot) {

                                var marker = new google.maps.Marker({
                                    map: map,
                                    title: childSnapshot.key
                                });

                                var path = new Array();

                                var myref1 = childSnapshot.child("Location").getRef();
                                myref1.on("value", function (data1, prevChildKey) {
                                    data1.forEach(
                                            function (childSnapshot1) {
                                                MapPoints = [];
                                                lats.push(childSnapshot1.val().latitude);
                                                longs.push(childSnapshot1.val().longitude);
                                                var myLatLng = {lat: childSnapshot1.val().latitude, lng: childSnapshot1.val().longitude};

                                                map.setCenter(myLatLng);
                                                marker.setPosition(myLatLng);
                                                path.push(myLatLng);
                                            }
                                    );
                                });                                
//                                var poly= new google.maps.Polyline({
//                                    path: path,
//                                    strokeColor: "#0000FF",
//                                    strokeOpacity: 0.8,
//                                    strokeWeight: 5
//                                });
//
//                                poly.setMap(map);
                                
                            }
                    );
                }
            });

        }