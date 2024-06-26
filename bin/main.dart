import 'dart:io';

import 'package:woocommerce_nylo_slate/metro/menu.dart';
import 'package:woocommerce_nylo_slate/metro/metro.dart' as metro_cli;
import 'package:nylo_support/metro/metro_service.dart';

void main(List<String> arguments) async {
  await MetroService.runCommand(arguments,
      allCommands: metro_cli.allCommands, menu: metroMenu);
  exit(0);
}
