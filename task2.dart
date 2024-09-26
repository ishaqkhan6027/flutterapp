import 'dart:async';

// Function to simulate fetching weather data from an API
Future<String> fetchWeatherData() async {
  print('Fetching weather data...');

  // Simulating a 3-second delay to mimic network request
  await Future.delayed(Duration(seconds: 3));

  // Uncomment the next line to simulate an error
  // throw Exception('Failed to fetch weather data.');

  return 'Weather: Sunny, 25°C';
}

void main() async {
  print('Starting weather data retrieval...');

  try {
    // Call the fetchWeatherData function and await the result
    String weatherData = await fetchWeatherData();
    print('Weather data fetched successfully!');
    print(weatherData);
  } catch (e) {
    // Handle any errors during the data fetch
    print('Error occurred while fetching weather data: $e');
  } finally {
    print('Weather data retrieval complete.');
  }
}
