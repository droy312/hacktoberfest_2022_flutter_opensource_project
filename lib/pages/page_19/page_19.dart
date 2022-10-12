import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/contributor_detail_model.dart';
import 'models/contributors_card_model.dart';
import 'models/contributors_data_model.dart';

class Page19 extends StatefulWidget {
  const Page19({Key? key}) : super(key: key);

  @override
  _Page19State createState() => _Page19State();
}

class _Page19State extends State<Page19> with AutomaticKeepAliveClientMixin {
  List<ContributorCard> cardList = [];
  @override
  void initState() {
    super.initState();
    getContributors(
            username: 'droy312',
            repository: 'hacktoberfest_2022_flutter_opensource_project')
        .then((cards) {
      setState(() {
        cardList = cards;
      });
    });
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    // Used device height and width to make responsive layout
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        //shadowColor: Colors.black26,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contributors List',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                cardList.length.toString(),
                style: const TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
      body: cardList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              // Get the List of contributors to the project from the GitHub Api
              // Append the details of the card to the cardList
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: cardList.length,
              itemBuilder: (ctx, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor),
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                NetworkImage(cardList[index].displayImgUrl),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              cardList[index].name.isNotEmpty
                                  ? Text(
                                      cardList[index].name,
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    )
                                  : const SizedBox(),
                              Text(
                                cardList[index].userName,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: deviceWidth / 1.7,
                                child: Text(
                                  cardList[index].desc == ''
                                      ? 'Contributor'
                                      : cardList[index].desc,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              cardList[index].location.isNotEmpty
                                  ? Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          cardList[index].location,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                              cardList[index].location.isNotEmpty
                                  ? const SizedBox(
                                      height: 5,
                                    )
                                  : const SizedBox(),
                              cardList[index].twitterUsername.isNotEmpty
                                  ? Row(
                                      children: [
                                        SizedBox(
                                          height: 14,
                                          width: 14,
                                          child: Image.network(
                                            'https://img.icons8.com/fluent-systems-filled/344/twitter.png',
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Icon(
                                          Icons.alternate_email,
                                          size: 14,
                                          color: Colors.blueAccent,
                                        ),
                                        Text(
                                          cardList[index].twitterUsername,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.blueAccent),
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ));
              },
            ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

Future<List<ContributorCard>> getContributors(
    {required String username, required String repository}) async {
  const String head = 'https://api.github.com/repos/';
  const String tail = '/contributors';
  String url = '$head$username/$repository$tail';
  http.Response response = await http.get(Uri.parse(url));
  List<Contributor> contributors = contributorFromJson(response.body);
  List<ContributorCard> contriCards = [];
  for (final contributor in contributors) {
    http.Response contributorResponse = await http
        .get(Uri.parse('https://api.github.com/users/${contributor.login}'));
    ContributorDetail contributorDetail =
        contributorDetailFromJson(contributorResponse.body);
    contriCards.add(
      ContributorCard(
        userName: contributor.login ?? '',
        name: contributorDetail.name ?? '',
        desc: contributorDetail.bio ?? '',
        location: contributorDetail.location ?? '',
        twitterUsername: contributorDetail.twitterUsername ?? '',
        displayImgUrl: contributorDetail.avatarUrl ?? '',
        website: contributorDetail.blog != null
            ? (contributorDetail.blog!.isEmpty
                ? contributorDetail.htmlUrl ?? ''
                : contributorDetail.blog ?? '')
            : '',
      ),
    );
  }

  return contriCards;
}
