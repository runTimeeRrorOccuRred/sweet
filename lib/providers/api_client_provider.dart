import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sweetlifesaver/core/api_client.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());
final multiPartClientProvider =
    Provider<MultiPartClient>((ref) => MultiPartClient());
