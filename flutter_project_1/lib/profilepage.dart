// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {},
//         ),
//         centerTitle: true,
//         title: const Text(
//           'Profile', // Center heading
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile Header Section
//             const SizedBox(height: 20),
//             const CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage(
//                   'https://via.placeholder.com/150'), // Replace with user image
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Sarim Saqlain',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Divider(),

//             // Account Settings Section
//             buildSectionHeader('Account Settings'),
//             buildListTile(Icons.person, 'Personal information', onTap: () {}),
//             buildListTile(Icons.location_on, 'Address Book', onTap: () {}),
//             buildListTile(Icons.payment, 'My payment option', onTap: () {}),
//             buildListTile(Icons.notifications, 'Notification', onTap: () {}),
//             const Divider(),

//             // My Order Section
//             buildSectionHeader('My Order'),
//             buildListTile(Icons.favorite, 'Wishlist', onTap: () {}),
//             buildListTile(Icons.shopping_bag, 'My order', onTap: () {}),
//             const Divider(),

//             // Support Section
//             buildSectionHeader('Support'),
//             buildListTile(Icons.help, 'Get help', onTap: () {}),
//             buildListTile(Icons.feedback, 'Give us feedback', onTap: () {}),
//             const Divider(),

//             // Legal Section
//             buildSectionHeader('Legal'),
//             buildListTile(Icons.gavel, 'Terms & Conditions', onTap: () {}),
//             buildListTile(Icons.privacy_tip, 'Privacy Policy', onTap: () {}),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   // Helper for Section Header
//   Widget buildSectionHeader(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }

//   // Helper for List Tile
//   Widget buildListTile(IconData icon, String title, {VoidCallback? onTap}) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black),
//       title: Text(
//         title,
//         style: const TextStyle(fontSize: 16),
//       ),
//       onTap: onTap,
//     );
//   }
// }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Profile'),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Replace with your profile image URL
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sarim Saqlain',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'sarim@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            TextButton(
              onPressed: () {
                // Navigate to Edit Profile page
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            _buildSectionTitle('Account Settings'),
            _buildProfileOption(context, Icons.person, 'Personal information', () {
              // Navigate to Personal Information page
            }),
            _buildProfileOption(context, Icons.book, 'Address Book', () {
              // Navigate to Address Book page
            }),
            _buildProfileOption(context, Icons.payment, 'My payment option', () {
              // Navigate to Payment Options page
            }),
            _buildProfileOption(context, Icons.notifications, 'Notification', () {
              // Navigate to Notification Settings page
            }),
            const Divider(),
            _buildSectionTitle('My Order'),
            _buildProfileOption(context, Icons.favorite, 'Wishlist', () {
              // Navigate to Wishlist page
            }),
            _buildProfileOption(context, Icons.shopping_cart, 'My order', () {
              // Navigate to My Orders page
            }),
            const Divider(),
            _buildSectionTitle('Support'),
            _buildProfileOption(context, Icons.help, 'Get help', () {
              // Navigate to Get Help page
            }),
            _buildProfileOption(context, Icons.feedback, 'Give us feedback', () {
              // Navigate to Feedback page
            }),
            const Divider(),
            _buildSectionTitle('Legal'),
            _buildProfileOption(context, Icons.description, 'Terms & Conditions', () {
              // Navigate to Terms & Conditions page
            }),
            _buildProfileOption(context, Icons.privacy_tip, 'Privacy Policy', () {
              // Navigate to Privacy Policy page
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: onTap,
    );
  }
}
