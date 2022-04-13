import 'dart:math';

/*1-masala*/
extension MyStringExt on String{
  String get capitalize{
    String str = '';
    final output = StringBuffer();
    str = replaceFirst(this[0], this[0].toUpperCase());
        for(int i = 1; i < str.length; i++) {
          if (str[i] == ' ') {
            str = str.replaceRange(i+1, i+2, str[i+1].toUpperCase());
          }
        }
        output.write(str);
    return output.toString();
  }
  //T => O(n);
  //S => O(1);

  String get capitalizeFirst{
    final output = StringBuffer();
    output.write(replaceFirst(this[0], this[0].toUpperCase()));
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  String get camelCase{
    String str = this;
    final output = StringBuffer();
      for(int i = 1; i < str.length; i++){
        if(this[i] == ' '){
          str = str.replaceRange(i+1, i+2, str[i+1].toUpperCase());
        }
    }
    for(int i = 1; i < str.length; i++){
      if(str[i] == ' '){
        str = str.replaceRange(i, i+1, '');
      }
    }
      output.write(str);
      return output.toString();
  }
  //T => O(n);
  //S => O(1);

  String get isAlphabetOnly{
    final output = StringBuffer();
    if(contains(RegExp('[0-9]')) || contains(RegExp('[/*-++=)(*&^%":{><||}#@!~]'))){
      output.write(false);
    }
    else if(contains(RegExp('[A-Z]')) || contains(RegExp('[a-z]'))){
      output.write(true);
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  String get isAudioFileName{
    final output = StringBuffer();
      if(this[length-1] == '3' && this[length-2] == 'p' && this[length-3] == 'm' && this[length-4] == '.'){
        output.write(true);
      }else{
        output.write(false);
    }
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  String get isEmail{
    final output = StringBuffer();
    if(endsWith('@gmail.com') && !startsWith(RegExp('[0-9]'))){
      output.write(true);
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  String get isPalindrom{
    String str = this;
    int t = 0;
    int len = (length) ~/ 2 + 1;
    final output = StringBuffer();        //qudus
    if(length > 2 && length % 2 != 0){
      for(int i = 0; str.isNotEmpty; i++){
        if(str[0] == str[str.length-1]){
          t++;
          str = str.substring(1);
          if(str.isNotEmpty){
            str = str.substring(0, str.length-1);
          }
        }else{
          output.write(false);
          break;
        }
      }
      if(len == t){
        output.write(true);
      }
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(n);
  //S => O(1);

  String get isURL{
    final output = StringBuffer();
    if(startsWith('https://') || startsWith('http://') && endsWith('.uz') || endsWith('.com') || endsWith('.ru') || endsWith('.net')){
      output.write(true);
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  String get isPhoneNumber{
    String phone = this;
    final output = StringBuffer();
    for (int i = 0; i < phone.length; i++) {
      if (48 <= phone.codeUnitAt(i) && phone.codeUnitAt(i) <= 57) {
        phone = phone.replaceRange(i, i + 1, 'x');
      }
    }
    if ('(xxx) xxx-xxxx' == phone || 'xxx-xxx-xxxx' == phone) {
      output.write(true);
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(n);
  //S => O(1);

  String get isHexadecimal{
    final output = StringBuffer();
    if(contains(RegExp('[A-Fa-f0-9]|[A-Fa-f0-9]&[A-Z]'))){
      output.write(true);
    }else{
      output.write(false);
    }
    return output.toString();
  }
  //T => O(1);
  //S => O(1);

  }

/*2-masala*/
extension MyIntExt on int{

  bool get isPalindrome {
    int n2 = this;
    int n = this;
    int last = 0;
    String str = '';
    while (n > 0) {
      last = n % 10;
      str += last.toString();
      n = n ~/ 10;
    }
    return (n2.toString() == str);
  }
  //T => O(n);
  //S => O(1);

  bool get isHappy {
    int getNext(int n) {
      int sum = 0;
      int res = 0;

      while (n > 0) {
        res = n % 10;
        sum += res * res;
        n = n ~/ 10;
      }
      return sum;
    }

    bool isHappyNum() {
      int n = this;
      Set<int> set = {};
      while (n != 1 && !set.contains(n)) {
        set.add(n);
        n = getNext(n);
      }
      return n == 1;
    }
    return this == 1;
  }
  //T => O(n);
  //S => O(1);

  bool get isFibonacci {
    int n = this;
    bool test = false;
    int number1 = 1;
    int number2 = 1;
    for (int i = 1; i <= n; i++) {
      if (number1 + number2 == i) {
        test = (i == this);
        number1 = number2;
        number2 = i;
      }
    }
    return test;
  }
  //T => O(n);
  //S => O(1);

}



