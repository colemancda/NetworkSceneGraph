NetworkSceneGraph
=================

NetworkSceneGraph is an Objective-C framework that describes an API for a new internet browsing standard - distributed 3D scenes. The API that NetworkSceneGraph uses is powered by HTTP and JSON, making it cross-platform. On OS X this framework can render the distributed scene using SceneKit.

The REST API that NetworkSceneGraph uses allows large 3D scenes to be incrementally downloaded and rendered by a client. Also, it optionally allows clients to modify the scene graph (e.g. insert a avatar representation of a connected user or delete a 3D object). The classes in the NetworkSceneGraph framework can be subclassed for custom server configurations, such as dynamic access control and objects that are hidden based on the IP address a the client.

A standard browser is being developed for this framework and API - https://github.com/colemancda/NetworkNavigator

The server and client (NetworkNavigator) components of this project are designed to be forked for custom functionality, as long as they adhere to the original API. An example of this would be a fork of the server that has a specific 3D object whose texture changes based on a connected USB camera. All forked servers must be compatible with this API and work properly with NetworkNavigator.
