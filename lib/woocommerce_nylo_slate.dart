library woocommerce_nylo_slate;

import 'package:nylo_support/metro/constants/strings.dart';
import 'package:nylo_support/metro/models/ny_template.dart';
import 'package:woocommerce_nylo_slate/stubs/auth_stub.dart';
import 'package:woocommerce_nylo_slate/stubs/home_stub.dart';
import 'package:woocommerce_nylo_slate/stubs/splash_stub.dart';
import 'package:woocommerce_nylo_slate/stubs/widgets_stub.dart';

/*
|--------------------------------------------------------------------------
| Publish template files
|
| Add your stub templates inside the /stubs directory.
| Then add them into the `run` method like in the example below.
| Install the package in your project and run the below in the terminal.
| "dart run my_slate_template:main publish:all"
|
| Learn more https://nylo.dev/docs/5.20.0/slates
|--------------------------------------------------------------------------
*/

List<NyTemplate> run() => [
      /// Example
      NyTemplate(
        name: "button",
        saveTo: widgetsFolder,
        pluginsRequired: [],
        stub: stubButtonWidget(),
      ),
      NyTemplate(
        name: "text_form_field",
        saveTo: widgetsFolder,
        pluginsRequired: [],
        stub: stubTextFormField(),
      ),
      NyTemplate(
        name: "login",
        saveTo: pagesFolder,
        pluginsRequired: [],
        stub: stubLoginPage(),
        options: {
          'is_auth_page': true,
        },
      ),
      NyTemplate(
        name: "login",
        saveTo: controllersFolder,
        pluginsRequired: [],
        stub: stubLoginController(),
      ),
      NyTemplate(
        name: "splash",
        saveTo: pagesFolder,
        pluginsRequired: [],
        stub: stubSplash(),
        options: {
          'is_initial_page': true,
        },
      ),
      NyTemplate(
        name: "home",
        saveTo: pagesFolder,
        pluginsRequired: [],
        stub: stubHomePage(),
      ),
      NyTemplate(
        name: "home",
        saveTo: controllersFolder,
        pluginsRequired: [],
        stub: stubHomeController(),
      ),

      /// add more templates...
    ];

/*
|--------------------------------------------------------------------------
| Directory Reference
|
| controllersFolder = 'lib/app/controllers';
| widgetsFolder = 'lib/resources/widgets';
| pagesFolder = 'lib/resources/pages';
| modelsFolder = 'lib/app/models';
| themesFolder = 'lib/resources/themes';
| providerFolder = 'lib/app/providers';
| eventsFolder = 'lib/app/events';
| networkingFolder = 'lib/app/networking';
| themeColorsFolder = 'lib/resources/themes/styles';
|--------------------------------------------------------------------------
*/
