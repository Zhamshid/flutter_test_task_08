.PHONY: upgrade all libraries to null-safety versions.

update-null-safety:
	@echo "* Update to null safety *"
	@dart pub upgrade --null-safety

only-upd-libraries:
	@dart pub upgrade --null-safety --dry-run

get:
	@echo running flutter get packages 
	@flutter pub get

gen-lang:
	@echo "* Generating Localizations *"
	@flutter gen-l10n
gen-lang-intl:
	@echo "* Lozalizations Generating with INTL_UTILS *"
	@dart pub global run intl_utils:generate

generate-o:
	@echo "* Generating localizations -o*"
	@flutter pub run easy_localization:generate -O lib/core/helpers/translations/generated -o localization_loader.g.dart  -S lib/core/helpers/translations/

generate-f:
	@echo "* Generating localizations -f *"
	@flutter pub run easy_localization:generate -f keys -o localization_keys.g.dart -S lib/core/helpers/translations/ -O lib/core/helpers/translations/

gen-build-delete:
	@flutter pub run build_runner watch  --delete-conflicting-outputs

spider-watch:
	@spider build --watch

build-watch:	
	@flutter pub run build_runner watch

linter-analyze:
	@flutter pub run dart_code_metrics:metrics analyze lib

linter:
	@flutter pub run dart_code_metrics:metrics analyze lib \
	--exclude={/**.g.dart,/**.gr.dart,/**.gen.dart,/**.freezed.dart,/**.template.dart}