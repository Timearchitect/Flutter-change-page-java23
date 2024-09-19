import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform, Key;
import 'package:flutter/widgets.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web; // webb behöver ni +
    } else  {
      return android; //Android devices :)
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    //web copy paste
    apiKey: 'AIzaSyCyyxILpacaprdkWUGtNCz3ubKWq9vLWZc',
    appId: '1:234430893659:web:a8ef30de2a8f3525ccb97e',
    messagingSenderId: '234430893659',
    databaseURL:
        "https://mobilt-java-22-default-rtdb.europe-west1.firebasedatabase.app",
    projectId: 'mobilt-java-22',
    storageBucket: 'mobilt-java-22.appspot.com',
    /*
      apiKey: "AIzaSyCyyxILpacaprdkWUGtNCz3ubKWq9vLWZc",
      authDomain: "mobilt-java-22.firebaseapp.com",
      databaseURL: "https://mobilt-java-22-default-rtdb.europe-west1.firebasedatabase.app",
      projectId: "mobilt-java-22",
      storageBucket: "mobilt-java-22.appspot.com",
      messagingSenderId: "234430893659",
      appId: "1:234430893659:web:a8ef30de2a8f3525ccb97e"
    */
  );
  static const FirebaseOptions android = FirebaseOptions(
    //
    apiKey: 'AIzaSyAdAweGTXIYOlVCs0k0zH061KN9AOoN9P8',
    // "current_key": "AIzaSyBzTp1SfzDb2c8Oey17HIirX4xn0mOxiMo"
    appId: '1:234430893659:android:05d2b44e987828a5ccb97e',
    // "mobilesdk_app_id": "1:942610257676:android:8064da0c296384751f9b29",
    messagingSenderId: '942610257676',
    databaseURL:
        "https://mobilt-java-22-default-rtdb.europe-west1.firebasedatabase.app",
    projectId: 'mobilt-java-22',
    //    "project_id": "mobilt-kotlin-22",
    storageBucket:
        'mobilt-java-22.appspot.com', //    "storage_bucket": "mobilt-kotlin-22.appspot.com"
    /*
 * {
  "project_info": {
    "project_number": "234430893659",
    "firebase_url": "https://mobilt-java-22-default-rtdb.europe-west1.firebasedatabase.app",
    "project_id": "mobilt-java-22",
    "storage_bucket": "mobilt-java-22.appspot.com"
  },
  "client": [
    {
      "client_info": {
        "mobilesdk_app_id": "1:234430893659:android:05d2b44e987828a5ccb97e",
        "android_client_info": {
          "package_name": "se.gritacademy.firebaserealtimedb"
        }
      },
      "oauth_client": [
        {
          "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
          "client_type": 3
        }
      ],
      "api_key": [
        {
          "current_key": "AIzaSyAdAweGTXIYOlVCs0k0zH061KN9AOoN9P8"
        }
      ],
      "services": {
        "appinvite_service": {
          "other_platform_oauth_client": [
            {
              "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
              "client_type": 3
            }
          ]
        }
      }
    },
    {
      "client_info": {
        "mobilesdk_app_id": "1:234430893659:android:a640b549e4d74161ccb97e",
        "android_client_info": {
          "package_name": "se.gritacademy.firestoreexample"
        }
      },
      "oauth_client": [
        {
          "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
          "client_type": 3
        }
      ],
      "api_key": [
        {
          "current_key": "AIzaSyAdAweGTXIYOlVCs0k0zH061KN9AOoN9P8"
        }
      ],
      "services": {
        "appinvite_service": {
          "other_platform_oauth_client": [
            {
              "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
              "client_type": 3
            }
          ]
        }
      }
    },
    {
      "client_info": {
        "mobilesdk_app_id": "1:234430893659:android:33df70631c08e94bccb97e",
        "android_client_info": {
          "package_name": "se.gritacademy.java_flutter"
        }
      },
      "oauth_client": [
        {
          "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
          "client_type": 3
        }
      ],
      "api_key": [
        {
          "current_key": "AIzaSyAdAweGTXIYOlVCs0k0zH061KN9AOoN9P8"
        }
      ],
      "services": {
        "appinvite_service": {
          "other_platform_oauth_client": [
            {
              "client_id": "234430893659-ehne1tnto5f3kb8rtf9de4an6sd813hl.apps.googleusercontent.com",
              "client_type": 3
            }
          ]
        }
      }
    }
  ],
  "configuration_version": "1"
}*/
  );

/*

    "project_number": "942610257676",

  ); */

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByPJBCEcTCp0EQcGCHXY1Wz8I1mhRAaLI',
    appId: '1:248317208047:ios:c73205c7c000c1ac37821a',
    messagingSenderId: '248317208047',
    projectId: 'hitch-e4a25',
    storageBucket: 'hitch-e4a25.appspot.com',
    iosClientId:
        '248317208047-mjhism759kathie80lapuh2074cavm2o.apps.googleusercontent.com',
    iosBundleId: 'com.example.hitchApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByPJBCEcTCp0EQcGCHXY1Wz8I1mhRAaLI',
    appId: '1:248317208047:ios:c73205c7c000c1ac37821a',
    messagingSenderId: '248317208047',
    projectId: 'hitch-e4a25',
    storageBucket: 'hitch-e4a25.appspot.com',
    iosClientId:
        '248317208047-mjhism759kathie80lapuh2074cavm2o.apps.googleusercontent.com',
    iosBundleId: 'com.example.hitchApp',
  );
}
