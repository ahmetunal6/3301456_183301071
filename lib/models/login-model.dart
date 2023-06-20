class LoginModel {
  String? message;
  String? token;
  String? id;

  LoginModel({this.message, this.token,this.id});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    id=json['id'];
    
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    data['id']=this.id;
    return data;
  }
}