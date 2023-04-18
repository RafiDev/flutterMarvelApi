format:
	flutter format . --set-exit-if-changed

format-fix:
	flutter format .

lint:
	flutter analyze

tests:
	flutter test

packages-outdated:
	flutter pub outdated

packages-upgrade:
	flutter pub upgrade

clean:
	flutter clean
	flutter pub get
