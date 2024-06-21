import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample blog data with image URLs
    final List<Map<String, String>> blogs = List.generate(
      10,
      (index) => {
        'title': 'Blog Post ${index + 1}',
        'content': 'This is a brief description of blog post ${index + 1}.',
        'image': ' ${index + 1}', // Placeholder image URL
      },
    );
//   @override
//   Widget build(BuildContext context) {
//     // Sample blog data with image URLs
//     final List<Map<String, String>> blogs = List.generate(
//       10,
//       (index) => {
//         'title': 'Blog Post ${index + 1}',
//         'content': 'This is a brief description of blog post ${index + 1}.',
//         'image': ' ${index + 1}', // Placeholder image URL
//       },
//     );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          final blog = blogs[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Image.network(
                blog['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                blog['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(blog['content']!),
              onTap: () {
                // Navigate to blog post details page
                // For now, just show a simple snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Clicked on ${blog['title']}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemCount: blogs.length,
//         itemBuilder: (context, index) {
//           final blog = blogs[index];
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 8.0),
//             child: ListTile(
//               leading: Image.network(
//                 blog['image']!,
//                 width: 50,
//                 height: 50,
//                 fit: BoxFit.cover,
//               ),
//               title: Text(
//                 blog['title']!,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text(blog['content']!),
//               onTap: () {
//                 // Navigate to blog post details page
//                 // For now, just show a simple snackbar
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Clicked on ${blog['title']}'),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }