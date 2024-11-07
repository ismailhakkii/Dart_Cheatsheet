// Todo App 

class Task {
  String name;
  int priority;  // 1-5 arasında bir değer
  bool isCompleted;

  Task(this.name, this.priority, {this.isCompleted = false});

  @override
  String toString() {
    return 'Görev: $name, Öncelik: $priority, Tamamlandı mı: ${isCompleted ? "Evet" : "Hayır"}';
  }
}

class TaskManager {
  List<Task> tasks = [];

  // Görev ekleme
  void addTask(String name, int priority) {
    tasks.add(Task(name, priority));
    print('Yeni görev eklendi: $name');
  }
  void updateTask(String oldName, String newName, int newPriority) {
  for (var task in tasks) {
    if (task.name == oldName) {
      task.name = newName;
      task.priority = newPriority;
      print('$oldName güncellendi: $newName, Öncelik: $newPriority');
      return;
    }
  }
  print('Görev bulunamadı.');
}

  // Görev tamamlama
  void completeTask(String name) {
    for (var task in tasks) {
      if (task.name == name) {
        task.isCompleted = true;
        print('$name görevi tamamlandı.');
        return;
      }
    }
    print('Görev bulunamadı.');
  }

  // Görevleri listeleme
  void listTasks({bool showCompleted = true}) {
    var filteredTasks = tasks.where((task) => showCompleted || !task.isCompleted);
    print('Görev listesi:');
    for (var task in filteredTasks) {
      print(task);
    }
  }

  // Önceliğe göre filtreleme
  void listTasksByPriority(int priority) {
    var filteredTasks = tasks.where((task) => task.priority == priority);
    print('Öncelik $priority olan görevler:');
    for (var task in filteredTasks) {
      print(task);
    }
  }

  // Görev silme
  void removeTask(String name) {
    tasks.removeWhere((task) => task.name == name);
    print('$name görevi silindi.');
  }
}

void main() {
  var taskManager = TaskManager();

  taskManager.addTask("Projeyi tamamlama", 5);
  taskManager.addTask("Alışveriş yapma", 3);
  taskManager.addTask("Kitap okuma", 2);

  taskManager.completeTask("Alışveriş yapma");

  taskManager.listTasks(showCompleted: false);  // Tamamlanmamış görevleri listeleme
  taskManager.listTasksByPriority(5);  // Öncelik 5 olan görevleri listele
  taskManager.removeTask("Kitap okuma");  // Görev sil
}
