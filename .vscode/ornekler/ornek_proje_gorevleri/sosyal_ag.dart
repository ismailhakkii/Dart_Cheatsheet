import 'dart:collection';
import 'dart:io';

class User {
  final String id;
  final String name;
  final Set<String> followers = {};
  final Set<String> following = {};

  User(this.id, this.name);
}

class SocialNetwork {
  final Map<String, User> users = {};

  // Kullanıcı ekleme
  void addUser(String id, String name) {
    if (users.containsKey(id)) {
      print('Kullanıcı ID\'si zaten mevcut.');
      return;
    }
    users[id] = User(id, name);
    print('Kullanıcı eklendi: $name (ID: $id)');
  }

  // Kullanıcı silme
  void removeUser(String id) {
    if (!users.containsKey(id)) {
      print('Kullanıcı bulunamadı.');
      return;
    }
    // Takip ilişkilerini temizleme
    for (var followerId in users[id]!.followers) {
      users[followerId]?.following.remove(id);
    }
    for (var followingId in users[id]!.following) {
      users[followingId]?.followers.remove(id);
    }
    users.remove(id);
    print('Kullanıcı silindi: $id');
  }

  // Takip etme
  void follow(String followerId, String followingId) {
    if (!users.containsKey(followerId) || !users.containsKey(followingId)) {
      print('Bir veya iki kullanıcı bulunamadı.');
      return;
    }
    if (followerId == followingId) {
      print('Kendi kendinizi takip edemezsiniz.');
      return;
    }
    if (users[followerId]!.following.contains(followingId)) {
      print('Zaten bu kullanıcıyı takip ediyorsunuz.');
      return;
    }
    users[followerId]!.following.add(followingId);
    users[followingId]!.followers.add(followerId);
    print('${users[followerId]!.name} artık ${users[followingId]!.name}\'ı takip ediyor.');
  }

  // Takibi bırakma
  void unfollow(String followerId, String followingId) {
    if (!users.containsKey(followerId) || !users.containsKey(followingId)) {
      print('Bir veya iki kullanıcı bulunamadı.');
      return;
    }
    if (!users[followerId]!.following.contains(followingId)) {
      print('Bu kullanıcıyı takip etmiyorsunuz.');
      return;
    }
    users[followerId]!.following.remove(followingId);
    users[followingId]!.followers.remove(followerId);
    print('${users[followerId]!.name} artık ${users[followingId]!.name}\'ı takip etmiyor.');
  }

  // Takipçileri görüntüleme
  void displayFollowers(String id) {
    if (!users.containsKey(id)) {
      print('Kullanıcı bulunamadı.');
      return;
    }
    var user = users[id]!;
    if (user.followers.isEmpty) {
      print('${user.name}\'ın takipçisi yok.');
      return;
    }
    print('${user.name}\'ın Takipçileri:');
    for (var followerId in user.followers) {
      print('- ${users[followerId]!.name} (ID: $followerId)');
    }
  }

  // Takip ettiklerini görüntüleme
  void displayFollowing(String id) {
    if (!users.containsKey(id)) {
      print('Kullanıcı bulunamadı.');
      return;
    }
    var user = users[id]!;
    if (user.following.isEmpty) {
      print('${user.name}\'ın takip ettiği kullanıcı yok.');
      return;
    }
    print('${user.name}\'ın Takip Ettiği Kullanıcılar:');
    for (var followingId in user.following) {
      print('- ${users[followingId]!.name} (ID: $followingId)');
    }
  }

  // Ortak takipçileri bulma
  void findMutualFollowers(String id1, String id2) {
    if (!users.containsKey(id1) || !users.containsKey(id2)) {
      print('Bir veya iki kullanıcı bulunamadı.');
      return;
    }
    var user1 = users[id1]!;
    var user2 = users[id2]!;
    var mutual = user1.followers.intersection(user2.followers);
    if (mutual.isEmpty) {
      print('Ortak takipçi yok.');
      return;
    }
    print('${user1.name} ve ${user2.name}\'ın Ortak Takipçileri:');
    for (var userId in mutual) {
      print('- ${users[userId]!.name} (ID: $userId)');
    }
  }

  // Arkadaş önerileri
  void suggestFriends(String id) {
    if (!users.containsKey(id)) {
      print('Kullanıcı bulunamadı.');
      return;
    }
    var user = users[id]!;
    Map<String, int> suggestions = {};

    for (var followedId in user.following) {
      var followedUser = users[followedId]!;
      for (var theirFollowing in followedUser.following) {
        if (theirFollowing == id ||
            user.following.contains(theirFollowing)) continue;
        suggestions[theirFollowing] = (suggestions[theirFollowing] ?? 0) + 1;
      }
    }

    if (suggestions.isEmpty) {
      print('Arkadaş önerisi yok.');
      return;
    }

    // Önerileri en çok ortak sayıya göre sıralama
    var sortedSuggestions = suggestions.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    print('${user.name} için Arkadaş Önerileri:');
    for (var entry in sortedSuggestions) {
      print('- ${users[entry.key]!.name} (Ortak Takipçi Sayısı: ${entry.value})');
    }
  }
}

void main() {
  var network = SocialNetwork();

  print('Sosyal Ağ Simülasyonuna Hoşgeldiniz!');
  print('Komutları kullanarak işlemleri gerçekleştirebilirsiniz.');
  print('Komutlar: add, remove, follow, unfollow, followers, following, mutual, suggest, exit');

  while (true) {
    stdout.write('\nKomut girin: ');
    var input = stdin.readLineSync();
    if (input == null) continue;

    var parts = input.split(' ');
    var command = parts[0].toLowerCase();

    switch (command) {
      case 'add':
        if (parts.length < 3) {
          print('Kullanım: add <id> <isim>');
          break;
        }
        var id = parts[1];
        var name = parts.sublist(2).join(' ');
        network.addUser(id, name);
        break;

      case 'remove':
        if (parts.length != 2) {
          print('Kullanım: remove <id>');
          break;
        }
        network.removeUser(parts[1]);
        break;

      case 'follow':
        if (parts.length != 3) {
          print('Kullanım: follow <followerId> <followingId>');
          break;
        }
        network.follow(parts[1], parts[2]);
        break;

      case 'unfollow':
        if (parts.length != 3) {
          print('Kullanım: unfollow <followerId> <followingId>');
          break;
        }
        network.unfollow(parts[1], parts[2]);
        break;

      case 'followers':
        if (parts.length != 2) {
          print('Kullanım: followers <id>');
          break;
        }
        network.displayFollowers(parts[1]);
        break;

      case 'following':
        if (parts.length != 2) {
          print('Kullanım: following <id>');
          break;
        }
        network.displayFollowing(parts[1]);
        break;

      case 'mutual':
        if (parts.length != 3) {
          print('Kullanım: mutual <id1> <id2>');
          break;
        }
        network.findMutualFollowers(parts[1], parts[2]);
        break;

      case 'suggest':
        if (parts.length != 2) {
          print('Kullanım: suggest <id>');
          break;
        }
        network.suggestFriends(parts[1]);
        break;

      case 'exit':
        print('Çıkış yapılıyor...');
        return;

      default:
        print('Bilinmeyen komut.');
    }
  }
}
