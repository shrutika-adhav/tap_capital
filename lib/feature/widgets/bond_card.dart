import"package:flutter/material.dart";

import "../models/bond.dart";

class BondCard extends StatelessWidget {

  final Bond bond;
  final String highlight;
  final VoidCallback onPressed;

  const BondCard({
    required this.bond, required this.onPressed, required this.highlight});

  @override
  Widget build(BuildContext context) {
    var spans = _highlightSpans(bond.companyName, highlight, Theme.of(context)
    );
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 10),
        decoration:  BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          //shape: BoxShape.rectangle
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.3,),
              ),
                child: ClipOval(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(bond.logo,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: bond.isin.substring(0,8),
                          style:const TextStyle(
                              fontSize: 16,
                            color: Colors.grey
                          ),
                          children:  [
                            TextSpan(
                              text: bond.isin.substring(8,12),
                              style:const TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )
                            )
                          ]
                      )
                  ),
                  const SizedBox(height: 4,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Text(bond.rating,
                        style:const TextStyle(
                          fontSize: 10
                        ),),
                      ),
                      Container(
                        height: 3, width: 3,
                        decoration:const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: RichText(text: TextSpan(children: spans)),

                      ),

                    ],
                  )
                ],
              ),

            ],
          ),
          IconButton(onPressed: onPressed,
              icon:const Icon(Icons.navigate_next))
        ],
      )

    );
  }

  List<TextSpan> _highlightSpans(
      String source, String query, ThemeData theme) {
    if (query.isEmpty) {
      return [TextSpan(text: source, style: theme.textTheme.bodySmall)];
    }

    final regex = RegExp(RegExp.escape(query), caseSensitive: false);
    final List<TextSpan> spans = [];
    int start = 0;

    for (final match in regex.allMatches(source)) {
      if (match.start > start) {
        spans.add(TextSpan(
          text: source.substring(start, match.start),
          style: theme.textTheme.bodySmall,
        ));
      }
      spans.add(TextSpan(
        text: match.group(0),
        style: theme.textTheme.bodySmall!.copyWith(
          backgroundColor: const Color(0xffffedd8)
        ),
      ));
      start = match.end;
    }
    if (start < source.length) {
      spans.add(TextSpan(
        text: source.substring(start),
        style: theme.textTheme.bodySmall,
      ));
    }
    return spans;
  }
  
}
