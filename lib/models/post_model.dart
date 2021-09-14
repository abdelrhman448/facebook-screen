class PostModel{
 String? username;
 String? time;
 String? profileImage;
 String? text;
 List<String>? postPhoto=[];
 int? like;
 PostModel(
     {
      this.text
      ,this.username
      ,this.profileImage
      ,this.time
      ,this.postPhoto
      ,this.like
     }
      ) ;


}