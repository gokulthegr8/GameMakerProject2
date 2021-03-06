{
  "spriteId": {
    "name": "spr_door",
    "path": "sprites/spr_door/spr_door.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_interactable_switch",
    "path": "objects/obj_interactable_switch/obj_interactable_switch.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_test_door","path":"objects/obj_test_door/obj_test_door.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_test_door","path":"objects/obj_test_door/obj_test_door.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"Spr_On","path":"objects/obj_interactable_switch/obj_interactable_switch.yy",},"objectId":{"name":"obj_interactable_switch","path":"objects/obj_interactable_switch/obj_interactable_switch.yy",},"value":"spr_doorOpen","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Spr_Off","path":"objects/obj_interactable_switch/obj_interactable_switch.yy",},"objectId":{"name":"obj_interactable_switch","path":"objects/obj_interactable_switch/obj_interactable_switch.yy",},"value":"spr_door","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"Trigger_Sound","path":"objects/obj_interaction/obj_interaction.yy",},"objectId":{"name":"obj_interaction","path":"objects/obj_interaction/obj_interaction.yy",},"value":"snd_doorLock","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Assets",
    "path": "folders/Objects/InteractionTesting/Assets.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_test_door",
  "tags": [],
  "resourceType": "GMObject",
}