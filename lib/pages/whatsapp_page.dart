import 'package:flutter/material.dart';
import 'package:ui_whatsapp_clone/theme/theme.dart';
import 'package:ui_whatsapp_clone/widgets/call_view.dart';
import 'package:ui_whatsapp_clone/widgets/chat_view.dart';
import 'package:ui_whatsapp_clone/widgets/status_view.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({super.key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  final tabs = const [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: "CHAT",
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALL",
    ),
  ];

  late TabController _tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.index = 1;
    _tabController.addListener(() {
      setState(() {
        switch (_tabController.index) {
          case 0:
            fabIcon = Icons.camera;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_alt;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp Mod"),
        backgroundColor: whatsAppGreen,
        foregroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.search,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_vert,
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Icon(Icons.camera_alt),
          ),
          ChatView(),
          StatusView(),
          CallView()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: whatsAppLightGreen,
      ),
    );
  }
}
