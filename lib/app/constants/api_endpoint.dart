class ApiEndpoints {
  
 
  ApiEndpoints._();
 
  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  // static const String baseUrl = "http://10.0.2.2:3001/api/v1/";
  static const String baseUrl = "http://localhost:5000/api/";
  // Optionally, adjust the baseUrl to match your network setup or deployment environment
 
  // ====================== User Routes ======================
  static const String login = "user/login";                // Endpoint for user login
  static const String register = "user/register";          // Endpoint for user registration
  
}
