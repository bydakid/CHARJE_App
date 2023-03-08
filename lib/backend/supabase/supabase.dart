import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://iwvubczzkgugqqwutxbw.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml3dnViY3p6a2d1Z3Fxd3V0eGJ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY3MzYzMjIsImV4cCI6MTk5MjMxMjMyMn0.Jz9Ij9wSbGwUl_EoSu-7tNpLyh5_pYw-SMkdh3KxLbQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
