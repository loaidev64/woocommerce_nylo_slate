# Woocommerce Nylo Slate 
Generates files for your Woocommerce Nylo project.

### Getting Started
In your flutter project add the dependency:

``` dart 
dependencies:
  ...
  woocommerce_nylo_slate: ^0.0.1
```

## Usage

Run the below command in your project.

``` bash
dart run woocommerce_nylo_slate:main publish:all

// or with metro

dart run nylo_framework:main publish:slate woocommerce_nylo_slate
```

## Requirements
* Dart >= 2.19.0
* Flutter >= 3.7.0

## Installation Guid
* add to **.env** file this variables:
```env
WOOCOMMERCE_BASE_URL="https://example.com"
WOOCOMMERCE_NUMBER_OF_LATEST_PRODUCTS_SHOWN_IN_HOME_PAGE=4
WOOCOMMERCE_NUMBER_OF_SALE_PRODUCTS_SHOWN_IN_HOME_PAGE=4
```

## Files generated:
- Pages
  - MyExamplePage
  - ProfilePage
- Widgets
  - Buttons

## Changelog
Please see [CHANGELOG](https://github.com/loaidev64/woocommerce_nylo_slate/CHANGELOG.md) for more information what has changed recently.

## Licence

The MIT License (MIT). Please view the [License](https://github.com/loaidev64/woocommerce_nylo_slate/blob/master/licence) File for more information.