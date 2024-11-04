import 'dart:collection';
import 'dart:io';

// Localization sınıfı, farklı diller için gerekli tüm metinleri ve komutları içerir
class Localization {
  // Genel Mesajlar
  String welcome;
  String instructions;
  String availableCommands;
  String promptCommand;
  String unknownCommand;

  // Komut Kullanım Mesajları
  String addUsage;
  String removeUsage;
  String followUsage;
  String unfollowUsage;
  String followersUsage;
  String followingUsage;
  String mutualUsage;
  String suggestUsage;

  // Başarı ve Hata Mesajları
  String userAdded;
  String userExists;
  String userRemoved;
  String userNotFound;
  String alreadyFollowing;
  String cannotFollowSelf;
  String followSuccess;
  String unfollowSuccess;
  String notFollowing;
  String noFollowers;
  String noFollowing;
  String noMutual;
  String noSuggestions;
  String exitMessage;
  String loginPrompt;
  String loginSuccess;
  String loginExists;

  // Komut Adları
  String cmdAdd;
  String cmdRemove;
  String cmdFollow;
  String cmdUnfollow;
  String cmdFollowers;
  String cmdFollowing;
  String cmdMutual;
  String cmdSuggest;
  String cmdExit;

  // Hoş Geldiniz Mesajı Fonksiyonu
  String Function(String name) welcomeUser;

  Localization({
    required this.welcome,
    required this.instructions,
    required this.availableCommands,
    required this.promptCommand,
    required this.unknownCommand,
    required this.addUsage,
    required this.removeUsage,
    required this.followUsage,
    required this.unfollowUsage,
    required this.followersUsage,
    required this.followingUsage,
    required this.mutualUsage,
    required this.suggestUsage,
    required this.userAdded,
    required this.userExists,
    required this.userRemoved,
    required this.userNotFound,
    required this.alreadyFollowing,
    required this.cannotFollowSelf,
    required this.followSuccess,
    required this.unfollowSuccess,
    required this.notFollowing,
    required this.noFollowers,
    required this.noFollowing,
    required this.noMutual,
    required this.noSuggestions,
    required this.exitMessage,
    required this.loginPrompt,
    required this.loginSuccess,
    required this.loginExists,
    required this.cmdAdd,
    required this.cmdRemove,
    required this.cmdFollow,
    required this.cmdUnfollow,
    required this.cmdFollowers,
    required this.cmdFollowing,
    required this.cmdMutual,
    required this.cmdSuggest,
    required this.cmdExit,
    required this.welcomeUser, // Yeni Yöntem
  });
}

// İngilizce Localization
final Localization english = Localization(
  welcome: 'Welcome to the Social Network Simulation!',
  instructions: 'You can perform operations using commands.',
  availableCommands: 'Commands: add, remove, follow, unfollow, followers, following, mutual, suggest, exit',
  promptCommand: '\nEnter command: ',
  unknownCommand: 'Unknown command.',
  addUsage: 'Usage: add <id> <name>',
  removeUsage: 'Usage: remove <id>',
  followUsage: 'Usage: follow <targetId>',
  unfollowUsage: 'Usage: unfollow <targetId>',
  followersUsage: 'Usage: followers',
  followingUsage: 'Usage: following',
  mutualUsage: 'Usage: mutual <otherUserId>',
  suggestUsage: 'Usage: suggest',
  userAdded: 'User added: ',
  userExists: 'User ID already exists.',
  userRemoved: 'User removed: ',
  userNotFound: 'User not found.',
  alreadyFollowing: 'You are already following this user.',
  cannotFollowSelf: 'You cannot follow yourself.',
  followSuccess: ' is now following ',
  unfollowSuccess: ' is no longer following ',
  notFollowing: 'You are not following this user.',
  noFollowers: '\'s has no followers.',
  noFollowing: '\'s is not following anyone.',
  noMutual: 'No mutual followers.',
  noSuggestions: 'No friend suggestions.',
  exitMessage: 'Exiting...',
  loginPrompt: 'Please register by providing a unique ID and your name.',
  loginSuccess: 'Successfully registered as ',
  loginExists: 'User ID already exists. Please choose a different ID.',
  cmdAdd: 'add',
  cmdRemove: 'remove',
  cmdFollow: 'follow',
  cmdUnfollow: 'unfollow',
  cmdFollowers: 'followers',
  cmdFollowing: 'following',
  cmdMutual: 'mutual',
  cmdSuggest: 'suggest',
  cmdExit: 'exit',
  welcomeUser: (name) => 'Welcome to the Social Network Simulation, $name!',
);

// Türkçe Localization
final Localization turkish = Localization(
  welcome: 'Sosyal Ağ Simülasyonuna Hoşgeldiniz!',
  instructions: 'Komutları kullanarak işlemleri gerçekleştirebilirsiniz.',
  availableCommands: 'Komutlar: ekle, sil, takipet, takipbırak, takipçiler, takipedilenler, ortak, öner, cikis',
  promptCommand: '\nKomut girin: ',
  unknownCommand: 'Bilinmeyen komut.',
  addUsage: 'Kullanım: ekle <id> <isim>',
  removeUsage: 'Kullanım: sil <id>',
  followUsage: 'Kullanım: takipet <hedefId>',
  unfollowUsage: 'Kullanım: takipbırak <hedefId>',
  followersUsage: 'Kullanım: takipçiler',
  followingUsage: 'Kullanım: takipedilenler',
  mutualUsage: 'Kullanım: ortak <diğerKullanıcıId>',
  suggestUsage: 'Kullanım: öner',
  userAdded: 'Kullanıcı eklendi: ',
  userExists: 'Kullanıcı ID\'si zaten mevcut.',
  userRemoved: 'Kullanıcı silindi: ',
  userNotFound: 'Kullanıcı bulunamadı.',
  alreadyFollowing: 'Zaten bu kullanıcıyı takip ediyorsunuz.',
  cannotFollowSelf: 'Kendi kendinizi takip edemezsiniz.',
  followSuccess: ' artık takip ediyor ',
  unfollowSuccess: ' artık takip etmiyor ',
  notFollowing: 'Bu kullanıcıyı takip etmiyorsunuz.',
  noFollowers: '\'ın takipçisi yok.',
  noFollowing: '\'ın takip ettiği kullanıcı yok.',
  noMutual: 'Ortak takipçi yok.',
  noSuggestions: 'Arkadaş önerisi yok.',
  exitMessage: 'Çıkış yapılıyor...',
  loginPrompt: 'Lütfen benzersiz bir ID ve adınızı girerek kaydolun.',
  loginSuccess: 'Başarıyla kaydolundu: ',
  loginExists: 'Kullanıcı ID\'si zaten mevcut. Lütfen farklı bir ID seçin.',
  cmdAdd: 'ekle',
  cmdRemove: 'sil',
  cmdFollow: 'takipet',
  cmdUnfollow: 'takipbırak',
  cmdFollowers: 'takipçiler',
  cmdFollowing: 'takipedilenler',
  cmdMutual: 'ortak',
  cmdSuggest: 'öner',
  cmdExit: 'cikis',
  welcomeUser: (name) => 'Sosyal Ağ Simülasyonuna Hoşgeldiniz! Sayın $name',
);

class User {
  final String id;
  final String name;
  final Set<String> followers = {};
  final Set<String> following = {};

  User(this.id, this.name);
}

class SocialNetwork {
  final Map<String, User> users = {};
  final Localization loc;
  late User currentUser;

  SocialNetwork(this.loc);

  // Kullanıcı ekleme
  void addUser(String id, String name) {
    if (users.containsKey(id)) {
      print(loc.userExists);
      return;
    }
    users[id] = User(id, name);
    print('${loc.userAdded}$name (ID: $id)');
  }

  // Kullanıcı silme
  void removeUser(String id) {
    if (!users.containsKey(id)) {
      print(loc.userNotFound);
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
    print('${loc.userRemoved}$id');

    // Eğer silinen kullanıcı şu anki kullanıcı ise çıkış yap
    if (currentUser.id == id) {
      print(loc.exitMessage);
      exit(0);
    }
  }

  // Takip etme
  void follow(String targetId) {
    if (!users.containsKey(targetId)) {
      print(loc.userNotFound);
      return;
    }
    if (currentUser.id == targetId) {
      print(loc.cannotFollowSelf);
      return;
    }
    if (currentUser.following.contains(targetId)) {
      print(loc.alreadyFollowing);
      return;
    }
    currentUser.following.add(targetId);
    users[targetId]!.followers.add(currentUser.id);
    print('${currentUser.name}${loc.followSuccess}${users[targetId]!.name}.');
  }

  // Takibi bırakma
  void unfollow(String targetId) {
    if (!users.containsKey(targetId)) {
      print(loc.userNotFound);
      return;
    }
    if (!currentUser.following.contains(targetId)) {
      print(loc.notFollowing);
      return;
    }
    currentUser.following.remove(targetId);
    users[targetId]!.followers.remove(currentUser.id);
    print('${currentUser.name}${loc.unfollowSuccess}${users[targetId]!.name}.');
  }

  // Takipçileri görüntüleme
  void displayFollowers() {
    if (currentUser.followers.isEmpty) {
      print('${currentUser.name}${loc.noFollowers}');
      return;
    }
    if (loc.cmdFollowers == 'followers') {
      print('${currentUser.name}\'s Followers:');
    } else {
      print('${currentUser.name}\'ın Takipçileri:');
    }
    for (var followerId in currentUser.followers) {
      print('- ${users[followerId]!.name} (ID: $followerId)');
    }
  }

  // Takip ettiklerini görüntüleme
  void displayFollowing() {
    if (currentUser.following.isEmpty) {
      print('${currentUser.name}${loc.noFollowing}');
      return;
    }
    if (loc.cmdFollowing == 'following') {
      print('${currentUser.name} is Following:');
    } else {
      print('${currentUser.name}\'ın Takip Ettiği Kullanıcılar:');
    }
    for (var followingId in currentUser.following) {
      print('- ${users[followingId]!.name} (ID: $followingId)');
    }
  }

  // Ortak takipçileri bulma
  void findMutualFollowers(String otherUserId) {
    if (!users.containsKey(otherUserId)) {
      print(loc.userNotFound);
      return;
    }
    var otherUser = users[otherUserId]!;
    var mutual = currentUser.followers.intersection(otherUser.followers);
    if (mutual.isEmpty) {
      print(loc.noMutual);
      return;
    }
    if (loc.cmdMutual == 'mutual') {
      print('Mutual Followers with ${otherUser.name}:');
    } else {
      print('${currentUser.name} ve ${otherUser.name}\'ın Ortak Takipçileri:');
    }
    for (var userId in mutual) {
      print('- ${users[userId]!.name} (ID: $userId)');
    }
  }

  // Arkadaş önerileri
  void suggestFriends() {
    Map<String, int> suggestions = {};

    for (var followedId in currentUser.following) {
      var followedUser = users[followedId]!;
      for (var theirFollowing in followedUser.following) {
        if (theirFollowing == currentUser.id ||
            currentUser.following.contains(theirFollowing)) continue;
        suggestions[theirFollowing] = (suggestions[theirFollowing] ?? 0) + 1;
      }
    }

    if (suggestions.isEmpty) {
      print(loc.noSuggestions);
      return;
    }

    // Önerileri en çok ortak sayıya göre sıralama
    var sortedSuggestions = suggestions.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    if (loc.cmdSuggest == 'suggest') {
      print('Friend Suggestions for ${currentUser.name}:');
    } else {
      print('Arkadaş Önerileri for ${currentUser.name}:');
    }

    for (var entry in sortedSuggestions) {
      if (loc.cmdSuggest == 'suggest') {
        print('- ${users[entry.key]!.name} (Common Followers: ${entry.value})');
      } else {
        print('- ${users[entry.key]!.name} (Ortak Takipçi Sayısı: ${entry.value})');
      }
    }
  }
}

void main() {
  // Dil seçimi
  Localization? loc;

  while (loc == null) {
    print('Please select language / Lütfen dil seçiniz:');
    print('1. English');
    print('2. Türkçe');
    stdout.write('Enter 1 or 2: ');
    var langInput = stdin.readLineSync();
    if (langInput == null) continue;
    if (langInput.trim() == '1') {
      loc = english;
    } else if (langInput.trim() == '2') {
      loc = turkish;
    } else {
      print('Invalid selection. Please enter 1 or 2.\n');
    }
  }

  var network = SocialNetwork(loc);

  // Kullanıcı kayıt işlemi
  while (true) {
    print('\n${loc.loginPrompt}');
    stdout.write(loc.cmdAdd == 'add' ? 'ID: ' : 'ID: ');
    var id = stdin.readLineSync();
    if (id == null || id.trim().isEmpty) {
      print(loc.unknownCommand);
      continue;
    }
    stdout.write(loc.cmdAdd == 'add' ? 'Name: ' : 'İsim: ');
    var name = stdin.readLineSync();
    if (name == null || name.trim().isEmpty) {
      print(loc.unknownCommand);
      continue;
    }

    if (network.users.containsKey(id)) {
      print(loc.loginExists);
      continue;
    }

    network.addUser(id, name);
    network.currentUser = network.users[id]!;
    print('${loc.loginSuccess}${network.currentUser.name} (ID: ${network.currentUser.id})');

    // Özel Hoş Geldiniz Mesajı
    print('${loc.welcomeUser(network.currentUser.name)}');
    break;
  }

  print('\n${loc.welcome}');
  print('${loc.instructions}');
  print('${loc.availableCommands}');

  while (true) {
    stdout.write(loc.promptCommand);
    var input = stdin.readLineSync();
    if (input == null) continue;

    var parts = input.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) continue;
    var command = parts[0].toLowerCase();

    switch (command) {
      case 'add':
      case 'ekle':
        if (command != loc.cmdAdd) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length < 3) {
          print(loc.addUsage);
          break;
        }
        var id = parts[1];
        var name = parts.sublist(2).join(' ');
        network.addUser(id, name);
        break;

      case 'remove':
      case 'sil':
        if (command != loc.cmdRemove) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 2) {
          print(loc.removeUsage);
          break;
        }
        network.removeUser(parts[1]);
        break;

      case 'follow':
      case 'takipet':
        if (command != loc.cmdFollow) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 2) {
          print(loc.followUsage);
          break;
        }
        network.follow(parts[1]);
        break;

      case 'unfollow':
      case 'takipbırak':
        if (command != loc.cmdUnfollow) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 2) {
          print(loc.unfollowUsage);
          break;
        }
        network.unfollow(parts[1]);
        break;

      case 'followers':
      case 'takipçiler':
        if (command != loc.cmdFollowers) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 1) {
          print(loc.followersUsage);
          break;
        }
        network.displayFollowers();
        break;

      case 'following':
      case 'takipedilenler':
        if (command != loc.cmdFollowing) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 1) {
          print(loc.followingUsage);
          break;
        }
        network.displayFollowing();
        break;

      case 'mutual':
      case 'ortak':
        if (command != loc.cmdMutual) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 2) {
          print(loc.mutualUsage);
          break;
        }
        network.findMutualFollowers(parts[1]);
        break;

      case 'suggest':
      case 'öner':
        if (command != loc.cmdSuggest) {
          print(loc.unknownCommand);
          break;
        }
        if (parts.length != 1) {
          print(loc.suggestUsage);
          break;
        }
        network.suggestFriends();
        break;

      case 'exit':
      case 'cikis':
        if (command != loc.cmdExit) {
          print(loc.unknownCommand);
          break;
        }
        print(loc.exitMessage);
        return;

      default:
        print(loc.unknownCommand);
    }
  }
}
