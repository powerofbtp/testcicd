{
	"contents": {
		"6b1d044c-47df-452c-bc3b-ef81cab180ec": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.zapyard.workflow.poapproval",
			"subject": "poapproval",
			"name": "poapproval",
			"documentation": "PO Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"955eef5d-d3e8-4a45-9400-6de7b8d9df3c": {
					"name": "ExclusiveGateway1"
				},
				"39ec1c46-8029-4eb7-93d7-6632f0eb3952": {
					"name": "DecisionAccept"
				},
				"2a43ee06-f705-40fb-99f4-57e0790a5e30": {
					"name": "DecisionReject"
				},
				"ebbc75a3-e161-4028-adf4-59363108a8b7": {
					"name": "Node_srv"
				},
				"b93e6d7d-09a2-42cc-9b27-0d8904997267": {
					"name": "PO Details"
				}
			},
			"sequenceFlows": {
				"5c1547e1-0422-4abd-8f69-41db41ccad80": {
					"name": "accept"
				},
				"bdb583d8-5d84-4d1a-a4fc-fb41a883f361": {
					"name": "reject"
				},
				"c01c921a-cce7-41b7-8f44-d0002365b08d": {
					"name": "SequenceFlow7"
				},
				"d9cfd322-c3b5-4640-ab08-583a44413561": {
					"name": "SequenceFlow8"
				},
				"fd3a4b84-a930-448e-ac12-d2d11eca4c96": {
					"name": "SequenceFlow9"
				},
				"01133929-dd32-4309-9418-4b90c220db1f": {
					"name": "SequenceFlow10"
				},
				"f11d0302-171e-4645-a8c1-486cb66dab63": {
					"name": "SequenceFlow11"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"955eef5d-d3e8-4a45-9400-6de7b8d9df3c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "bdb583d8-5d84-4d1a-a4fc-fb41a883f361"
		},
		"39ec1c46-8029-4eb7-93d7-6632f0eb3952": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/poapproval/accept.js",
			"id": "scripttask1",
			"name": "DecisionAccept"
		},
		"2a43ee06-f705-40fb-99f4-57e0790a5e30": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/poapproval/reject.js",
			"id": "scripttask2",
			"name": "DecisionReject"
		},
		"ebbc75a3-e161-4028-adf4-59363108a8b7": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wfDest1",
			"path": "/wfpost",
			"httpMethod": "POST",
			"requestVariable": "${context.data}",
			"id": "servicetask1",
			"name": "Node_srv"
		},
		"5c1547e1-0422-4abd-8f69-41db41ccad80": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision==\"accept\"}",
			"id": "sequenceflow4",
			"name": "accept",
			"sourceRef": "955eef5d-d3e8-4a45-9400-6de7b8d9df3c",
			"targetRef": "39ec1c46-8029-4eb7-93d7-6632f0eb3952"
		},
		"bdb583d8-5d84-4d1a-a4fc-fb41a883f361": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "reject",
			"sourceRef": "955eef5d-d3e8-4a45-9400-6de7b8d9df3c",
			"targetRef": "2a43ee06-f705-40fb-99f4-57e0790a5e30"
		},
		"c01c921a-cce7-41b7-8f44-d0002365b08d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "39ec1c46-8029-4eb7-93d7-6632f0eb3952",
			"targetRef": "ebbc75a3-e161-4028-adf4-59363108a8b7"
		},
		"d9cfd322-c3b5-4640-ab08-583a44413561": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "2a43ee06-f705-40fb-99f4-57e0790a5e30",
			"targetRef": "ebbc75a3-e161-4028-adf4-59363108a8b7"
		},
		"fd3a4b84-a930-448e-ac12-d2d11eca4c96": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "ebbc75a3-e161-4028-adf4-59363108a8b7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"78315085-6cae-438d-b0dd-7d19fe4208be": {},
				"a8bcd7b0-f75b-4f47-a1a2-49d69710e150": {},
				"1793bad0-5dd7-4870-9ff3-36a6d6aa1c02": {},
				"9c6dbfc8-10a4-4d3c-968d-b6ff0e4b0843": {},
				"e7247044-8497-4914-8e49-07fd90c4b72e": {},
				"cdce1d6e-d0e0-4baf-9f21-7bccc8339475": {},
				"027d7a98-7a26-4577-96ec-c7f0c35d9811": {},
				"674a86b4-c7f2-4c80-a90b-3e6f112e38d5": {},
				"1ff971bc-e2bf-4b81-b73c-4bd3e1db5a4d": {},
				"8dd9c484-4c61-4e18-8ee6-abe9d483b720": {},
				"0c1f1405-3a7c-4d69-81ff-3864a5da7917": {},
				"17f79019-b3b1-4331-b97f-4af1c3f0d306": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 57,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 948,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"78315085-6cae-438d-b0dd-7d19fe4208be": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 359,
			"y": 100,
			"object": "955eef5d-d3e8-4a45-9400-6de7b8d9df3c"
		},
		"a8bcd7b0-f75b-4f47-a1a2-49d69710e150": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 527,
			"y": -12,
			"width": 100,
			"height": 60,
			"object": "39ec1c46-8029-4eb7-93d7-6632f0eb3952"
		},
		"1793bad0-5dd7-4870-9ff3-36a6d6aa1c02": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 554,
			"y": 212,
			"width": 100,
			"height": 60,
			"object": "2a43ee06-f705-40fb-99f4-57e0790a5e30"
		},
		"9c6dbfc8-10a4-4d3c-968d-b6ff0e4b0843": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380,121 464,121 464,24 530,24",
			"sourceSymbol": "78315085-6cae-438d-b0dd-7d19fe4208be",
			"targetSymbol": "a8bcd7b0-f75b-4f47-a1a2-49d69710e150",
			"object": "5c1547e1-0422-4abd-8f69-41db41ccad80"
		},
		"e7247044-8497-4914-8e49-07fd90c4b72e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "380,121 477.5,121 477.5,248 556,248",
			"sourceSymbol": "78315085-6cae-438d-b0dd-7d19fe4208be",
			"targetSymbol": "1793bad0-5dd7-4870-9ff3-36a6d6aa1c02",
			"object": "bdb583d8-5d84-4d1a-a4fc-fb41a883f361"
		},
		"cdce1d6e-d0e0-4baf-9f21-7bccc8339475": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 723,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ebbc75a3-e161-4028-adf4-59363108a8b7"
		},
		"027d7a98-7a26-4577-96ec-c7f0c35d9811": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "577,18 773,18 773,86.5",
			"sourceSymbol": "a8bcd7b0-f75b-4f47-a1a2-49d69710e150",
			"targetSymbol": "cdce1d6e-d0e0-4baf-9f21-7bccc8339475",
			"object": "c01c921a-cce7-41b7-8f44-d0002365b08d"
		},
		"674a86b4-c7f2-4c80-a90b-3e6f112e38d5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "604,242 773,242 773,145.5",
			"sourceSymbol": "1793bad0-5dd7-4870-9ff3-36a6d6aa1c02",
			"targetSymbol": "cdce1d6e-d0e0-4baf-9f21-7bccc8339475",
			"object": "d9cfd322-c3b5-4640-ab08-583a44413561"
		},
		"1ff971bc-e2bf-4b81-b73c-4bd3e1db5a4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "773,116 885.75,116 885.75,48 965.5,48 965.5,98.5",
			"sourceSymbol": "cdce1d6e-d0e0-4baf-9f21-7bccc8339475",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "fd3a4b84-a930-448e-ac12-d2d11eca4c96"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 11,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 2,
			"exclusivegateway": 1
		},
		"b93e6d7d-09a2-42cc-9b27-0d8904997267": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "PO Approval",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "saptechengineer@gmail.com",
			"formReference": "/forms/poapproval/myForm1.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "myform"
			}, {
				"key": "formRevision",
				"value": "V1"
			}],
			"id": "usertask2",
			"name": "PO Details"
		},
		"8dd9c484-4c61-4e18-8ee6-abe9d483b720": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 139,
			"y": 91,
			"width": 100,
			"height": 60,
			"object": "b93e6d7d-09a2-42cc-9b27-0d8904997267"
		},
		"01133929-dd32-4309-9418-4b90c220db1f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b93e6d7d-09a2-42cc-9b27-0d8904997267"
		},
		"0c1f1405-3a7c-4d69-81ff-3864a5da7917": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "73,118.5 139.5,118.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "8dd9c484-4c61-4e18-8ee6-abe9d483b720",
			"object": "01133929-dd32-4309-9418-4b90c220db1f"
		},
		"f11d0302-171e-4645-a8c1-486cb66dab63": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "b93e6d7d-09a2-42cc-9b27-0d8904997267",
			"targetRef": "955eef5d-d3e8-4a45-9400-6de7b8d9df3c"
		},
		"17f79019-b3b1-4331-b97f-4af1c3f0d306": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "189,121 359.5,121",
			"sourceSymbol": "8dd9c484-4c61-4e18-8ee6-abe9d483b720",
			"targetSymbol": "78315085-6cae-438d-b0dd-7d19fe4208be",
			"object": "f11d0302-171e-4645-a8c1-486cb66dab63"
		}
	}
}