$(function () {

	var status = $('#status');

	(function getGeoLocation() {
		status.text('Getting Location...');
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function (position) {
				var lat = position.coords.latitude;
				var long = position.coords.longitude;

				// Call the getData function, send the lat and long
				getData(lat, long);

			});
		} else {
			status.text("Your browser doesn't support Geolocation or it is not enabled!");
		}

	})();

	function getData(lat, long){
		// Get the data from the wunderground API
		$.ajax({
			url : "http://api.wunderground.com/api/fb3ab7f96a6eeff1/geolookup/conditions/q/" + lat + "," + long + ".json",
			dataType : "jsonp",
			success : function(data) {
				var city = data['location']['city'];
				var state = data['location']['state'];
				var temp = Math.round(data['current_observation']['temp_f']);
				var sum = data['current_observation']['weather'];
				var wind = data['current_observation']['wind_mph'];
				var feel = Math.round(data['current_observation']['feelslike_f']);
				var dew = data['current_observation']['dewpoint_f'];
				// BETTER to use dot notation? var feel = Math.round(data.current_observation.feelslike_f);

				$("title").prepend(city + ", " + state);
				$("#cityDisplay").html(city + ", " + state);
				$("#currentTemp").html(temp + " &deg;F");
				$("#summary").html(sum);
				$("#windspeed").html("Wind: " + wind + " mph");
				$("#windchill").html("Feels like: " + feel + " &deg;F");
				$("#dew").html("Dewpoint: " + dew + " &#8457;");
			}

		});
	}
});
