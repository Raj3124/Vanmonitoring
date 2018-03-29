/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
                        type: 'success', delay: 8000
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
                        type: 'danger', delay: 10000
                    });
                }
                data12.getRef().remove();
            });
        });
    });
