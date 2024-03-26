import 'package:crud_supabase/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://rhowiwkdwnwkcdcsqlhk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJob3dpd2tkd253a2NkY3NxbGhrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0NzAzNzgsImV4cCI6MjAyNzA0NjM3OH0.lLoTOHgarkUJeEA5JE5pzNgYant_D7dIvQGf44cPAfA',
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.homePage,
    routes: AppRoutes.define(),
  ));
}

