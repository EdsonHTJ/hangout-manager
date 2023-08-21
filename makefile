all:
	@flutter run

handlers:
	@flutter packages pub run build_runner build --delete-conflicting-outputs