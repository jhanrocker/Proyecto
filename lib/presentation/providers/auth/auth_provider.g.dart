// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authStateChangesHash() => r'843eb1a621041def446e0ef856583a025a5a8e47';

/// See also [authStateChanges].
@ProviderFor(authStateChanges)
final authStateChangesProvider = AutoDisposeStreamProvider<User?>.internal(
  authStateChanges,
  name: r'authStateChangesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStateChangesRef = AutoDisposeStreamProviderRef<User?>;
String _$currentUserDataHash() => r'46c9c0509d112b80af043ad7a5382b6e04830dfc';

/// See also [currentUserData].
@ProviderFor(currentUserData)
final currentUserDataProvider = AutoDisposeFutureProvider<UserModel?>.internal(
  currentUserData,
  name: r'currentUserDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserDataRef = AutoDisposeFutureProviderRef<UserModel?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
