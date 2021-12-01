import 'package:flutter/material.dart';

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example'),
      ),
      body: Center(
        child: _PokemonListView()
      )
    );
  }
}

class _PokemonListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        final propotion = notification.metrics.pixels / notification.metrics.maxScrollExtent;
        if (propotion > 0.7) {
          // request api
        }
        return false;
      },
      child: ListView(children: [ _PokemonListItem() ],)
    );
  }
}

class _PokemonListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: const [
              Expanded(
                flex: 1,
                child: Text('text'),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Icon(Icons.access_alarm),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.grey.shade300,
          ),
        )
      ],
    );
  }
}