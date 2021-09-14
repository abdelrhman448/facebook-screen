import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebook_screen/models/chat%20model.dart';
import 'package:facebook_screen/models/post_model.dart';
import 'package:facebook_screen/models/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myPostItem(context,PostModel postModel) {
  return Stack(
    alignment: Alignment.bottomRight,
    children: [
      Card(
        margin: EdgeInsets.all(0),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          postModel.profileImage!),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          postModel.username!,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postModel.time!,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade900,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey.shade900,
                            ),

                          ),
                          SizedBox(width: 4,),
                          Icon(
                            Icons.public,
                            color: Colors.grey.shade700,
                            size: 18,
                          ),


                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                postModel.text!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade900,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              if(postModel.postPhoto!=null)
                CarouselSlider(
                  options: CarouselOptions(
                      height: 300,
                      initialPage: 0,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      reverse: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal),
                  items: postModel.postPhoto!.map((e) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image(
                          image: NetworkImage(e),
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        );
                      },
                    );
                  }).toList(),
                ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                        'https://cdn.iconscout.com/icon/free/png-256/angry-face-14-894765.png'),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Ahmed and ${postModel.like!} others',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                height: 4,
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 20,
                                width: 20,
                                image: AssetImage('images/like.png'),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Like',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 20,
                                width: 20,
                                image: AssetImage('images/comment.png'),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Comment',
                                style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            ],
                          )
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 20,
                                width: 20,
                                color: Colors.black,
                                image: AssetImage('images/share.png',),
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    ],
  );
}
Widget storyItem(context,StoryModel storyModel){
  return  Stack(
    children: [
      Container(
        height: 200,
        width: 100,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300,width: 1),
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
          image:DecorationImage(
              image: NetworkImage(storyModel.storyImage!),
              fit: BoxFit.cover
          ),
        ),

      ),
      Positioned(
        top: 8,
        left: 8,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  storyModel.userImage!),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        left: 10,
        child: Container(
          width: 80,
          child: Text(
            storyModel.userName!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,

            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),

    ],
  );
}
Widget chatItem(context,ChatModel model){
  return Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage:NetworkImage('https://c8.alamy.com/comp/2BHG705/colourful-conceptual-images-2BHG705.jpg'),
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(width: 8,),
      Text(
        'My group',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  );
}