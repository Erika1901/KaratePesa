function fn() {

  var config = {
    name : "Erika",
    baseUrl : 'https://pesa-backend-production-2.up.railway.app',
    authorization: ''
  };

  var result = karate.callSingle('Auth.feature', config);
  config.authorization = 'Bearer '+ result.response.token;


  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;

}