function initialize() {
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 16
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
    var citref = firebase.database().ref("Citizen").orderByKey();
    citref.once("value", function (data) {
        data.forEach(function (childSnapshot) {
            var inst = childSnapshot.child("InstantComplaint").getRef();
            inst.on("value", function (data12) {
                data12.forEach(function (childSnapshot1) {
                    $.bootstrapGrowl(childSnapshot.val().phonenumber + "\n" + childSnapshot.val().email + "\n" + childSnapshot.val().location + "\n" + childSnapshot1.val(), {
                        type: 'danger', delay: 8000
                    });
                    childSnapshot1.getRef().remove();
                }
                );
            });
        });
    });
    var citref = firebase.database().ref("Driver");
    citref.once("value", function (data) {
        data.forEach(function (childSnapshot) {
            var inst = childSnapshot.child("SOS").getRef();
            inst.on("value", function (data12) {
                if ("true"===(JSON.stringify(data12.val()))) {
                    $.bootstrapGrowl(childSnapshot.val().area + "\n" + childSnapshot.val().name + "\n" + childSnapshot.val().vehiclenumber, {
                        type: 'success', delay: 10000
                    });
                }
                data12.getRef().remove();
            });
        });
    });
    var myref = firebase.database().ref("Driver").orderByKey();
    myref.on("value", function (data, prevChildKey) {
        if (data.val() == null || data.val() == '') {
            alert("No vehicle on duty");
        } else {
            data.forEach(
                    function (childSnapshot) {
                        var marker = new google.maps.Marker({
                            map: map,
                            title: childSnapshot.key
                        });
                        var path = new Array();
                        var i = 1;
                        var myref1 = childSnapshot.child("Location").getRef();
                        myref1.on("value", function (data1, prevChildKey) {

                            data1.forEach(
                                    function (childSnapshot1) {
                                        var myLatLng = {lat: childSnapshot1.val().latitude, lng: childSnapshot1.val().longitude};
                                        map.setCenter(myLatLng);
                                        marker.setPosition(myLatLng);
                                        path.push(myLatLng);
                                    }
                            );
                        });
                        var poly = new google.maps.Polyline({
                            path: path,
                            strokeColor: "#0000FF",
                            strokeOpacity: 0.5,
                            strokeWeight: 5
                        });
                        marker.addListener('click', function (e) {
                            if (i > 0) {
                                poly.setMap(map);
                                i = 0;
                            } else {
                                poly.setMap(null);
                                i = 1;
                            }
                        });
                    }
            );
        }
    });
}