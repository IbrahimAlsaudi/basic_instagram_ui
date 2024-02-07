import 'package:flutter/material.dart';

List<Widget> reels = [
  _MyReels(
    color: Colors.deepPurple,
    numberOfComments: '72.5K',
    userName: '3wess__',
    numberOfLikes: '467K',
    numberOfShares: '150k',
    videoDescription: 'A lion in the forest hunting a deer',
    audioName: '3wess__ audio',
  ),
  _MyReels(
    color: Colors.blueGrey,
    numberOfComments: '72.5K',
    userName: 'user4534',
    numberOfLikes: '47K',
    numberOfShares: '50k',
    videoDescription: 'A lion in the forest hunting a deer',
    audioName: 'some audio',
  ),
  _MyReels(
    color: Colors.deepPurple,
    numberOfComments: '72.5K',
    userName: '3wess__',
    numberOfLikes: '467K',
    numberOfShares: '150k',
    videoDescription: 'A lion in the forest hunting a deer',
    audioName: '3wess__ audio',
  ),
  _MyReels(
    color: Colors.deepPurple,
    numberOfComments: '72.5K',
    userName: '3wess__',
    numberOfLikes: '467K',
    numberOfShares: '150k',
    videoDescription: 'A lion in the forest hunting a deer',
    audioName: '3wess__ audio',
  ),
  _MyReels(
    color: Colors.deepPurple,
    numberOfComments: '72.5K',
    userName: '3wess__',
    numberOfLikes: '467K',
    numberOfShares: '150k',
    videoDescription: 'A lion in the forest hunting a deer',
    audioName: '3wess__ audio',
  ),
];

class _MyReels extends StatelessWidget {
  const _MyReels(
      {super.key,
      required this.color,
      required this.numberOfComments,
      required this.userName,
      required this.numberOfLikes,
      required this.numberOfShares,
      required this.videoDescription,
      required this.audioName});
  final Color color;
  final String userName;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final String videoDescription;
  final String audioName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color,
          padding: EdgeInsets.all(8),
          alignment: Alignment(-1, 1),
          /*-1 for left, 1 for bottom*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '$userName ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.verified,
                    size: 12,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(50, 30),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 65,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: videoDescription,
                      ),
                      TextSpan(
                        text: '#fyp #flutter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.music_note_rounded,
                  size: 15,
                ),
                label: Text(audioName),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(50, 30),
                  backgroundColor: Color.fromRGBO(100, 100, 100, 0.5),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment(1, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_border),
              SizedBox(height: 5),
              Text(numberOfLikes),
              SizedBox(
                height: 20,
              ),
              Icon(Icons.comment_rounded),
              SizedBox(height: 5),
              Text(numberOfComments),
              SizedBox(
                height: 20,
              ),
              Icon(Icons.arrow_outward_rounded),
              SizedBox(height: 5),
              Text(numberOfShares),
              SizedBox(
                height: 20,
              ),
              Icon(Icons.menu),
              SizedBox(height: 5),
              SizedBox(height: 30),
              // SizedBox(
              //   height: MediaQuery.sizeOf(context).height / 30,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
