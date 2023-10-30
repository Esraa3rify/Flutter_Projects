import 'package:flutter/material.dart';

class Massenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/66967410?v=4"),
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                "Chats",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 15.0,
          ),
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.note,
                  size: 16.0,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[300]),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text("Search")
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 90.0,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>buildStoryItem(),
                  separatorBuilder: (context, index)=> SizedBox(width: 20.0), itemCount: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index)=>buildChatItem()
                  , separatorBuilder: (context,index)=>SizedBox(width: 20.0), itemCount: 20)
              /*       SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Esraa Arify")
                      ],
                    ),


                  ],
                ),
              ),*/

              /*Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://d1fdloi71mui9q.cloudfront.net/C8LmN1ryQlOcuDhFqiMK_bvh9h0nl2SSne9CY"),
                      ),
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Esraa Sayed Arify",style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        children: [
                          Text("Hello, My name is Abdullah"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                          Text("2:0 pm"),
                        ],

                      )

                    ],
                  )
                ],
              ),
              SizedBox(height: 20.0,),*/
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/66967410?v=4"),
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Body Alby",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text("Hello, My name is Abdullah"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text("2:0 pm"),
                ],
              )
            ],
          )
        ],
      );

  Widget buildStoryItem() =>
      Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/66967410?v=4"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Body',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
