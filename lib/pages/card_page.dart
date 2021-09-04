import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          children: [
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: hp * .10, //size 100.0,
                child: Text(""),
              ),
            ),
            Divider(),
            Row(
              children: [
                _cardTipo1(),
                _cardTipo2(),
              ],
            ),
            _cartTipo4()
            //_CartTipo3(),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 0,
      //color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: 150.0,
          height: 200.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/profile.jpeg"),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  "Trading",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                  right: 5.0,
                ),
                child: Text(
                  "Este es un sub title",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black38,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardTipo2() {
    return Container(
      width: 150.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/avatar.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Text(
                "Trading",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Text(
                "Este es un sub title es un sub title es un sub title",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _CartTipo3() {
    return Container(
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Trading",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _cartTipo4() {
    return Container(
      width: 150.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage("assets/profile.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Text(
                      "Trading",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Text(
                      "Este es un sub title",
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white60,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          /*  Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Text(
                      "Trading",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Text(
                      "Este es un sub title",
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white60,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
