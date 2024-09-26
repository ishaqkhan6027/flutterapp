import 'dart:io';

void main() {
  // List to store tasks
  List<String> tasks = [];

  while (true) {
    print('\nTo-Do List Application');
    print('1. View Tasks');
    print('2. Add Task');
    print('3. Remove Task');
    print('4. Exit');

    stdout.write('Select an option: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        viewTasks(tasks);
        break;
      case '2':
        addTask(tasks);
        break;
      case '3':
        removeTask(tasks);
        break;
      case '4':
        print('Exiting the program...');
        exit(0);
      default:
        print('Invalid option. Please try again.');
    }
  }
}

// Function to display tasks
void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('Your to-do list is empty.');
  } else {
    print('\nYour Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

// Function to add a new task
void addTask(List<String> tasks) {
  stdout.write('Enter a new task: ');
  String? newTask = stdin.readLineSync();
  if (newTask != null && newTask.isNotEmpty) {
    tasks.add(newTask);
    print('Task added successfully.');
  } else {
    print('Task cannot be empty.');
  }
}

// Function to remove a task
void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove.');
    return;
  }

  stdout.write('Enter the task number to remove: ');
  String? taskIndexInput = stdin.readLineSync();
  int? taskIndex = int.tryParse(taskIndexInput ?? '');

  if (taskIndex == null || taskIndex <= 0 || taskIndex > tasks.length) {
    print('Invalid task number. Please try again.');
  } else {
    String removedTask = tasks.removeAt(taskIndex - 1);
    print('Task "$removedTask" removed successfully.');
  }
}
