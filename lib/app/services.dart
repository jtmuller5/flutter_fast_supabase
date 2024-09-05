import 'package:flutter_fast_supabase/app/get_it.dart';
import 'package:flutter_fast_supabase/app/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

AppRouter get router => getIt.get<AppRouter>();
