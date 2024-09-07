// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserHash() => r'a214880eba24f2aa377dfbd93f87095c7ed64cf0';

/// See also [getUser].
@ProviderFor(getUser)
final getUserProvider = FutureProvider<User>.internal(
  getUser,
  name: r'getUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserRef = FutureProviderRef<User>;
String _$authRepositoryHash() => r'e539cb248bbeb60ffc23de6d81c486e8e362738e';

/// See also [AuthRepository].
@ProviderFor(AuthRepository)
final authRepositoryProvider =
    AsyncNotifierProvider<AuthRepository, String>.internal(
  AuthRepository.new,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthRepository = AsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
