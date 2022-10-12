// To parse this JSON data, do
//
//     final contributor = contributorFromJson(jsonString);

import 'dart:convert';

List<Contributor> contributorFromJson(String str) => List<Contributor>.from(
    json.decode(str).map((x) => Contributor.fromJson(x)));

String contributorToJson(List<Contributor> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Contributor {
  Contributor({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.contributions,
  });

  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  int? contributions;

  factory Contributor.fromJson(Map<String, dynamic> json) => Contributor(
        login: json["login"] ?? null,
        id: json["id"] ?? null,
        nodeId: json["node_id"] ?? null,
        avatarUrl: json["avatar_url"] ?? null,
        gravatarId: json["gravatar_id"] ?? null,
        url: json["url"] ?? null,
        htmlUrl: json["html_url"] ?? null,
        followersUrl: json["followers_url"] ?? null,
        followingUrl: json["following_url"] ?? null,
        gistsUrl: json["gists_url"] ?? null,
        starredUrl: json["starred_url"] ?? null,
        subscriptionsUrl: json["subscriptions_url"] ?? null,
        organizationsUrl: json["organizations_url"] ?? null,
        reposUrl: json["repos_url"] ?? null,
        eventsUrl: json["events_url"] ?? null,
        receivedEventsUrl: json["received_events_url"] ?? null,
        type: json["type"] ?? null,
        siteAdmin: json["site_admin"] ?? null,
        contributions: json["contributions"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "login": login ?? null,
        "id": id ?? null,
        "node_id": nodeId ?? null,
        "avatar_url": avatarUrl ?? null,
        "gravatar_id": gravatarId ?? null,
        "url": url ?? null,
        "html_url": htmlUrl ?? null,
        "followers_url": followersUrl ?? null,
        "following_url": followingUrl ?? null,
        "gists_url": gistsUrl ?? null,
        "starred_url": starredUrl ?? null,
        "subscriptions_url": subscriptionsUrl ?? null,
        "organizations_url": organizationsUrl ?? null,
        "repos_url": reposUrl ?? null,
        "events_url": eventsUrl ?? null,
        "received_events_url": receivedEventsUrl ?? null,
        "type": type ?? null,
        "site_admin": siteAdmin ?? null,
        "contributions": contributions ?? null,
      };
}
