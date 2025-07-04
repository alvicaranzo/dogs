import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            _buildToggleBar(context),
            SizedBox(
                height: 180, child: Image.asset('assets/woman_shopping.jpg')),
            DealButtons(),
            _buildProductTile(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProductTile(BuildContext context) {
    return Container(
      height: 200,
      color: Theme.of(context).cardColor,
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/textiles.jpg',
            fit: BoxFit.fitHeight,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lorem Ipsum',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                      'Dolor sit amet, consectetur adipiscing elit. Quisque faucibus.')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildToggleBar(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildToggleItem(context, 'Recommended', selected: true),
        _buildToggleItem(context, 'Formal Wear'),
        _buildToggleItem(context, 'Casual Wear'),
      ],
    );
  }

  Widget _buildToggleItem(BuildContext context, String text,
      {bool selected = false}) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: selected
              ? null
              : Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.color
                  ?.withOpacity(0.5),
          fontWeight: selected ? FontWeight.bold : null,
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(Icons.home),
      ),
      title: Text('Let\'s go shopping!'),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}

class DealButtons extends StatelessWidget {
  const DealButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Row(
          children: <Widget>[
            DealButton(text: 'Best Sellers', color: Colors.orangeAccent),
            SizedBox(width: 10),
            DealButton(
              text: 'Daily Basis',
              color: Colors.blue,
            )
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: <Widget>[
            DealButton(
              text: 'Must buy in summer',
              color: Colors.lightGreen,
            ),
            SizedBox(width: 10),
            DealButton(
              text: 'Last Chance',
              color: Colors.redAccent,
            )
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  final String text;
  final Color color;

  const DealButton({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
