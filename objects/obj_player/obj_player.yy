{
    "id": "94206336-2ce3-4922-ae23-e64c1adeff7d",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_player",
    "eventList": [
        {
            "id": "e7a722f6-aff9-46a3-8d54-96bbc12fcb89",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": true,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "94206336-2ce3-4922-ae23-e64c1adeff7d"
        },
        {
            "id": "bdf931c0-6c2c-4de9-8b88-5660c6fc7f1a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": true,
            "collisionObjectId": "178e3584-1075-4a11-96c1-e7eaadeaab4c",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "94206336-2ce3-4922-ae23-e64c1adeff7d"
        },
        {
            "id": "e3b8acff-9250-44c8-910f-723c85b52af6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": true,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "94206336-2ce3-4922-ae23-e64c1adeff7d"
        },
        {
            "id": "d7c2a340-310d-4b64-beed-67e1784e74f9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": true,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "94206336-2ce3-4922-ae23-e64c1adeff7d"
        },
        {
            "id": "bfb2137d-6a85-4e0e-8658-cf33a3c36a37",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": true,
            "collisionObjectId": "012ad76f-6a9c-4aa2-9388-2e8677ff7c37",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "94206336-2ce3-4922-ae23-e64c1adeff7d"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        
    ],
    "parentObjectId": "1b80db30-01c2-475d-b242-9082dbeb23c2",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": [
        {
            "id": "9832f7c1-7c52-4d5c-b581-b8e448ec7c55",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "1ab263a9-dcb3-4356-8183-37477d25ee8c",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 24,
            "y": 0
        },
        {
            "id": "aa047488-4f7b-4988-8802-f10c7f21eabf",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 24,
            "y": 24
        },
        {
            "id": "49324263-ffb5-40e2-8c59-e038f6024499",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 24
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "61ba76d1-1134-48f6-b027-a9d6ddca1307",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 25,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "6.5",
            "varName": "jump_power",
            "varType": 0
        },
        {
            "id": "5f6fac96-c9ee-4f62-b197-356c86520fb1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 23,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "max_movement_speed",
            "varType": 0
        },
        {
            "id": "12c32fdc-5be7-4a24-9763-49988cecc2e5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 1,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.1",
            "varName": "friction_power",
            "varType": 0
        },
        {
            "id": "51b10fed-31d3-43fd-97a9-97714907ed41",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 4,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.35",
            "varName": "acceleration",
            "varType": 0
        },
        {
            "id": "a4d97eab-854e-428e-bb32-b2db2df5d2ba",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "on_ground",
            "varType": 3
        },
        {
            "id": "777a0fd6-c29a-4657-9296-c6c59e8362a7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "number_jumps",
            "varType": 1
        },
        {
            "id": "fadf68da-5825-4c66-af21-88ec33ca84fe",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "jumps_remaining",
            "varType": 1
        },
        {
            "id": "620facda-65a3-4055-b02f-9bee1116f6ed",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "\"None\"",
                "\"Pistol\"",
                "\"Rifle\"",
                "\"Rocket\""
            ],
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"Pistol\"",
            "varName": "equipment",
            "varType": 6
        },
        {
            "id": "e1873787-71ec-43d0-b767-012532883298",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 30,
            "rangeMin": 1,
            "resourceFilter": 1023,
            "value": "7.6",
            "varName": "rifle_cooldown",
            "varType": 0
        },
        {
            "id": "8a1fd442-8a23-4a57-b91f-401c0969a037",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "rifle_current",
            "varType": 0
        },
        {
            "id": "c0134da7-ec68-4a92-b166-34c04729c530",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "ammo",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "c3f16f04-76f2-4928-864e-1732d0c2857c",
    "visible": true
}