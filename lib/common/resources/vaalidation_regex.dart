

RegExp emailRegex = RegExp( r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');


//The password must be at least 12 characters long. change it as per need
RegExp passwordDigitRegex = RegExp(r'^(?=.*?[0-9])');
RegExp passwordSpecialRegex = RegExp(r'^(?=.*?[!"#$%&()*+,\-./:;<=>?@[\\\]^_`{|}~])');
RegExp passwordLowerRegex = RegExp(r'^(?=.*?[a-z])');
RegExp passwordUpperRegex = RegExp(r'^(?=.*?[A-Z])');
