# cloudWorkFlow

How to test/call workflow from postman:

## URL:
Your workflow endpoint (workflow_rest_url) + /v1/workflow-instances

## Method:
POST

## Headers:
Authorization: Bearer Your OAuth Token
  
# Body:
  {
    "definitionId": "com.zapyard.workflow.poapproval", // Your Workflow ID
    "context":{
        "productName": "BTP Training DAY6 WF",
        "productCost": 1000,
        "productCount": 25
    }
}
