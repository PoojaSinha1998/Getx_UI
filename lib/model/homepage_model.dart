

import 'dart:convert';
HomePageModel upcomingFromJson(String str) => HomePageModel.fromJson(json.decode(str));

String upcomingToJson(HomePageModel data) => json.encode(data.toJson());


class HomePageModel {
  int? totalItems;
  int? totalPages;
  int? page;
  List<Items>? items;

  HomePageModel({this.totalItems, this.totalPages, this.page, this.items});

  HomePageModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    totalPages = json['totalPages'];
    page = json['page'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalItems'] = this.totalItems;
    data['totalPages'] = this.totalPages;
    data['page'] = this.page;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? postType;
  UserInfo? userInfo;
  List<ShareLinks>? shareLinks;
  List<PostComments>? postComments;
  LikesCount? likesCount;
  List<Likes>? likes;
  List<ActionButtons>? actionButtons;
  List<Assets>? assets;
  String? publishAt;
  bool? canEdit;
  bool? canDelete;
  bool? futureDated;
  bool? pinned;
  String? reward;
  String? viewUrl;
  String? activityType;
  UserInfo? activityUserInfo;
  String? text;
  int? favouriteCounter;
  bool? canEnter;
  String? name;
  String? deadlineAt;
  String? tcUrl;

  Items(
      {this.id,
        this.createdAt,
        this.lastUpdatedAt,
        this.postType,
        this.userInfo,
        this.shareLinks,
        this.postComments,
        this.likesCount,
        this.likes,
        this.actionButtons,
        this.assets,
        this.publishAt,
        this.canEdit,
        this.canDelete,
        this.futureDated,
        this.pinned,
        this.reward,
        this.viewUrl,
        this.activityType,
        this.activityUserInfo,
        this.text,
        this.favouriteCounter,
        this.canEnter,
        this.name,
        this.deadlineAt,
        this.tcUrl});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    postType = json['postType'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    if (json['shareLinks'] != null) {
      shareLinks = <ShareLinks>[];
      json['shareLinks'].forEach((v) {
        shareLinks!.add(new ShareLinks.fromJson(v));
      });
    }
    if (json['postComments'] != null) {
      postComments = <PostComments>[];
      json['postComments'].forEach((v) {
        postComments!.add(new PostComments.fromJson(v));
      });
    }
    likesCount = json['likesCount'] != null
        ? new LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(new Likes.fromJson(v));
      });
    }

    if (json['actionButtons'] != null) {
      actionButtons = <ActionButtons>[];
      json['actionButtons'].forEach((v) {
        actionButtons!.add(new ActionButtons.fromJson(v));
      });
    }
    if (json['assets'] != null) {
      assets = <Assets>[];
      json['assets'].forEach((v) {
        assets!.add(new Assets.fromJson(v));
      });
    }
    publishAt = json['publishAt'];
    canEdit = json['canEdit'];
    canDelete = json['canDelete'];
    futureDated = json['futureDated'];
    pinned = json['pinned'];
    reward = json['reward'];
    viewUrl = json['viewUrl'];
    activityType = json['activityType'];
    activityUserInfo = json['activityUserInfo'] != null
        ? new UserInfo.fromJson(json['activityUserInfo'])
        : null;
    text = json['text'];
    favouriteCounter = json['favouriteCounter'];
    canEnter = json['canEnter'];
    name = json['name'];
    deadlineAt = json['deadlineAt'];
    tcUrl = json['tcUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['postType'] = this.postType;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    if (this.shareLinks != null) {
      data['shareLinks'] = this.shareLinks!.map((v) => v.toJson()).toList();
    }
    if (this.postComments != null) {
      data['postComments'] = this.postComments!.map((v) => v.toJson()).toList();
    }
    if (this.likesCount != null) {
      data['likesCount'] = this.likesCount!.toJson();
    }
    if (this.likes != null) {
      data['likes'] = this.likes!.map((v) => v.toJson()).toList();
    }

    if (this.actionButtons != null) {
      data['actionButtons'] =
          this.actionButtons!.map((v) => v.toJson()).toList();
    }
    if (this.assets != null) {
      data['assets'] = this.assets!.map((v) => v.toJson()).toList();
    }
    data['publishAt'] = this.publishAt;
    data['canEdit'] = this.canEdit;
    data['canDelete'] = this.canDelete;
    data['futureDated'] = this.futureDated;
    data['pinned'] = this.pinned;
    data['reward'] = this.reward;
    data['viewUrl'] = this.viewUrl;
    data['activityType'] = this.activityType;
    if (this.activityUserInfo != null) {
      data['activityUserInfo'] = this.activityUserInfo!.toJson();
    }
    data['text'] = this.text;
    data['favouriteCounter'] = this.favouriteCounter;
    data['canEnter'] = this.canEnter;
    data['name'] = this.name;
    data['deadlineAt'] = this.deadlineAt;
    data['tcUrl'] = this.tcUrl;
    return data;
  }
}

class UserInfo {
  String? id;
  bool? guest;
  String? photoUrl;
  String? nickname;
  String? name;
  String? surname;
  String? displayName;
  bool? influencer;

  UserInfo(
      {this.id,
        this.guest,
        this.photoUrl,
        this.nickname,
        this.name,
        this.surname,
        this.displayName,
        this.influencer});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guest = json['guest'];
    photoUrl = json['photoUrl'];
    nickname = json['nickname'];
    name = json['name'];
    surname = json['surname'];
    displayName = json['displayName'];
    influencer = json['influencer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['guest'] = this.guest;
    data['photoUrl'] = this.photoUrl;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['displayName'] = this.displayName;
    data['influencer'] = this.influencer;
    return data;
  }
}

class ShareLinks {
  String? name;
  String? icon;
  String? shareUrl;
  String? redirectExternalUrl;

  ShareLinks({this.name, this.icon, this.shareUrl, this.redirectExternalUrl});

  ShareLinks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    shareUrl = json['shareUrl'];
    redirectExternalUrl = json['redirectExternalUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['shareUrl'] = this.shareUrl;
    data['redirectExternalUrl'] = this.redirectExternalUrl;
    return data;
  }
}

class PostComments {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? text;
  UserInfo? userInfo;
  LikesCount? likesCount;
  List<Likes>? likes;
  bool? display;
  String? type;

  PostComments(
      {this.id,
        this.createdAt,
        this.lastUpdatedAt,
        this.text,
        this.userInfo,
        this.likesCount,
        this.likes,
        this.display,
        this.type});

  PostComments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    text = json['text'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    likesCount = json['likesCount'] != null
        ? new LikesCount.fromJson(json['likesCount'])
        : null;
    if (json['likes'] != null) {
      likes = <Likes>[];
      json['likes'].forEach((v) {
        likes!.add(new Likes.fromJson(v));
      });
    }
    display = json['display'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['text'] = this.text;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    if (this.likesCount != null) {
      data['likesCount'] = this.likesCount!.toJson();
    }
    if (this.likes != null) {
      data['likes'] = this.likes!.map((v) => v.toJson()).toList();
    }
    data['display'] = this.display;
    data['type'] = this.type;
    return data;
  }
}

class LikesCount {
  int? tHUMBDOWN;

  LikesCount({this.tHUMBDOWN});

  LikesCount.fromJson(Map<String, dynamic> json) {
    tHUMBDOWN = json['THUMB_DOWN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['THUMB_DOWN'] = this.tHUMBDOWN;
    return data;
  }
}

class Likes {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  UserInfo? userInfo;
  String? emotion;

  Likes(
      {this.id,
        this.createdAt,
        this.lastUpdatedAt,
        this.userInfo,
        this.emotion});

  Likes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    userInfo = json['userInfo'] != null
        ? new UserInfo.fromJson(json['userInfo'])
        : null;
    emotion = json['emotion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    if (this.userInfo != null) {
      data['userInfo'] = this.userInfo!.toJson();
    }
    data['emotion'] = this.emotion;
    return data;
  }
}



class ActionButtons {
  String? actionUrl;
  String? actionDescription;
  String? actionTextColor;
  String? actionBackgroundColor;

  ActionButtons(
      {this.actionUrl,
        this.actionDescription,
        this.actionTextColor,
        this.actionBackgroundColor});

  ActionButtons.fromJson(Map<String, dynamic> json) {
    actionUrl = json['actionUrl'];
    actionDescription = json['actionDescription'];
    actionTextColor = json['actionTextColor'];
    actionBackgroundColor = json['actionBackgroundColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['actionUrl'] = this.actionUrl;
    data['actionDescription'] = this.actionDescription;
    data['actionTextColor'] = this.actionTextColor;
    data['actionBackgroundColor'] = this.actionBackgroundColor;
    return data;
  }
}

class Assets {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? url;
  String? bucket;
  String? type;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;
  String? profileId;
  List<Thumbnails>? thumbnails;
  String? hash;
  String? originalFilename;

  Assets(
      {this.id,
        this.createdAt,
        this.lastUpdatedAt,
        this.url,
        this.bucket,
        this.type,
        this.mimeType,
        this.filesize,
        this.width,
        this.height,
        this.profileId,
        this.thumbnails,
        this.hash,
        this.originalFilename});

  Assets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    url = json['url'];
    bucket = json['bucket'];
    type = json['type'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
    profileId = json['profileId'];
    if (json['thumbnails'] != null) {
      thumbnails = <Thumbnails>[];
      json['thumbnails'].forEach((v) {
        thumbnails!.add(new Thumbnails.fromJson(v));
      });
    }
    hash = json['hash'];
    originalFilename = json['originalFilename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['url'] = this.url;
    data['bucket'] = this.bucket;
    data['type'] = this.type;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    data['profileId'] = this.profileId;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails!.map((v) => v.toJson()).toList();
    }
    data['hash'] = this.hash;
    data['originalFilename'] = this.originalFilename;
    return data;
  }
}

class Thumbnails {
  String? id;
  String? createdAt;
  String? lastUpdatedAt;
  String? type;
  String? url;
  String? mimeType;
  int? filesize;
  int? width;
  int? height;

  Thumbnails(
      {this.id,
        this.createdAt,
        this.lastUpdatedAt,
        this.type,
        this.url,
        this.mimeType,
        this.filesize,
        this.width,
        this.height});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    type = json['type'];
    url = json['url'];
    mimeType = json['mimeType'];
    filesize = json['filesize'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    data['lastUpdatedAt'] = this.lastUpdatedAt;
    data['type'] = this.type;
    data['url'] = this.url;
    data['mimeType'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}