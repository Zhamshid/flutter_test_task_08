import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_project_flutter/src/core/res/app_svg_images.dart';

void main() {
  test('app_svg_images assets test', () {
    expect(File(AppSvgImages.icMain).existsSync(), true);
    expect(File(AppSvgImages.icFavorite).existsSync(), true);
    expect(File(AppSvgImages.icMap).existsSync(), true);
    expect(File(AppSvgImages.icProfile).existsSync(), true);
    expect(File(AppSvgImages.icProfileV2).existsSync(), true);
  });
}
