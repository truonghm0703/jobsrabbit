import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      child: Stack(
        children: <Widget>[
          HomeHeaderView(),
          HomeContentView(width: MediaQuery.of(context).size.width),
        ],
      ),
    );
  }
}

class HomeHeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      "Nails",
      "Babysitting",
      "Waiter",
      "Actor",
      "Shipper",
      "Worker",
      "Nails",
      "Babysitting",
      "Waiter",
      "Actor",
      "Shipper",
      "Worker"
    ];
    return Container(
      height: 275.0,
      color: Color(0x00ff34a3af),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 23.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "JobsRabbit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("tap");
                    },
                    child: Container(
                      height: 40.0,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Location",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 11.0,
                          ),
                          Image.asset(
                            'assets/images/dashboard/home/ic_down.png',
                            width: 9,
                            height: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.0,
              ),
              Container(
                  height: 40.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 8.0),
                    child: TextField(
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 7.0, horizontal: 0.0),
                        suffixIcon: Icon(Icons.search),
                        hintText: "Search by job, title or keyword,…",
                        hintStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 40.0,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return _itemBuilder(buttons[index]);
                  },
                  itemCount: buttons.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemBuilder(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          print("tap");
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}

class HomeContentView extends StatefulWidget {
  final double width;

  HomeContentView({this.width});

  @override
  _HomeContentViewState createState() => _HomeContentViewState();
}

class _HomeContentViewState extends State<HomeContentView> {
  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      "Nails",
      "Babysitting",
      "Waiter",
      "Actor",
      "Shipper",
      "Worker",
      "Nails",
      "Babysitting",
      "Waiter",
      "Actor",
      "Shipper",
      "Worker"
    ];
    final double padding = (widget.width <= 375 ? 5.0 : 14.0);
    final double spacing = (widget.width <= 375 ? 5.0 : 13.0);
    print(widget.width);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 185.0, left: padding, right: padding),
        child: Container(
          width: widget.width,
          color: Colors.transparent,
          child: GridView.builder(
            itemCount: buttons.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              childAspectRatio: widget.width <= 375 ? (widget.width < 375 ? 0.8 : 0.93 ) : widget.width / 414,
            ),
            itemBuilder: (BuildContext context, int index) {
              return _itemJobBuilder();
            },
          ),
        ),
      ),
    );
  }

  Widget _itemJobBuilder() {
    final double padding = (widget.width <= 375 ? 8.0 : 14.0);
    return Container(
      height: 10,
      child: Card(
        elevation: 5.0,
        borderOnForeground: true,
        color: Colors.transparent,
        child: Container(
          height: 1000,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: Padding(
            padding: EdgeInsets.only(
                right: padding, left: padding, top: 24.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Nails Job",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "SE 97220",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0x00ff0093ca)),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/dashboard/home/ic_candidate.png',
                          width: 14,
                          height: 14,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "10",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0x00ff494949)),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/dashboard/home/ic_usd.png',
                          width: 6,
                          height: 10,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "DEAL",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0x00ff455962)),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print("tap");
                      },
                      child: Container(
                        height: 21,
                        width: 54,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.5)),
                            border: Border.all(color: Color(0x00ff34a3af))),
                        child: Text(
                          "Save",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: Color(0x00ff34a3af),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "2 days ago",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0x00ff9d9d9d),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
