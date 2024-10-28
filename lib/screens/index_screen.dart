import 'package:flutter/material.dart';
import 'package:todolist_app/screens/Placeholder.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Centers the column vertically
            mainAxisAlignment: MainAxisAlignment.center, // Centers items in the column
            crossAxisAlignment: CrossAxisAlignment.center, // Centers items horizontally
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddTaskScreen()),
                  );
                },
                child: const Text(
                  'Add Task',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ViewTasksScreen()),
                  );
                },
                child: const Text(
                  'View Tasks',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CompletedTasksScreen()),
                  );
                },
                child: const Text(
                  'View Completed Tasks',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PendingTasksScreen()),
                  );
                },
                child: const Text(
                  'View Pending Tasks',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditTaskScreen()),
                  );
                },
                child: const Text(
                  'Edit Task',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DeleteTaskScreen()),
                  );
                },
                child: const Text(
                  'Delete Task',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
