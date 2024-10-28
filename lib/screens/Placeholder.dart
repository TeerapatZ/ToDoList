import 'package:flutter/material.dart';

// Placeholder screen for each action
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Task")),
      body: const Center(child: Text("This is the Add Task screen")),
    );
  }
}

class ViewTasksScreen extends StatelessWidget {
  const ViewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("View Tasks")),
      body: const Center(child: Text("This is the View Tasks screen")),
    );
  }
}

class CompletedTasksScreen extends StatelessWidget {
  const CompletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Completed Tasks")),
      body: const Center(child: Text("This is the Completed Tasks screen")),
    );
  }
}

class PendingTasksScreen extends StatelessWidget {
  const PendingTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pending Tasks")),
      body: const Center(child: Text("This is the Pending Tasks screen")),
    );
  }
}

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Task")),
      body: const Center(child: Text("This is the Edit Task screen")),
    );
  }
}

class DeleteTaskScreen extends StatelessWidget {
  const DeleteTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Delete Task")),
      body: const Center(child: Text("This is the Delete Task screen")),
    );
  }
}
