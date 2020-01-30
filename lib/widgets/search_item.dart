import 'package:bookshelf/model/rakuten_book_response.dart';
import 'package:flutter/material.dart';

class SearchItemCard extends StatelessWidget {
  final Book item;

  SearchItemCard(this.item);

//  {
//    debugPrint('item=$item.title');
//  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
//        onTap: () => _handleTap(context),
        child: Row(
          children: <Widget>[
//            FadeInImage.assetNetwork(
//                fit: BoxFit.cover,
//                width: 100.0,
//                height: 150.0,
//                placeholder: "assets/placeholder.jpg",
//                image: item.imageUrl),
            Container(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
//                        color: primaryDark,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
//                      child: Text(item.mediaType.toUpperCase(),
//                          style: TextStyle(color: colorAccent)),
                    ),
                  ),
                  Container(
                    height: 4.0,
                  ),
                  Text(
                    item.title,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    height: 4.0,
                  ),
                  Text(item.title, style: TextStyle())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//  _handleTap(BuildContext context) {
//    switch (item.mediaType) {
//      case "movie":
//        goToMovieDetails(context, item.asMovie);
//        return;
//      case "tv":
//        goToMovieDetails(context, item.asShow);
//        return;
//      case "person":
//        goToActorDetails(context, item.asActor);
//        return;
//    }
//  }
}
