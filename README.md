Bulwinkel.com
===
Static site for `bulwinkel.com` built with Flutter Hummingbird.

Dev
===
Stateless hot reload:
```shell script
flutter packages run webdev serve --auto restart
```

Releasing
===
Requires [peanut](https://pub.dev/packages/peanut)

From the `dev` branch run:
```shell script
peanut -b master
```