# 基于n8n的docker 配置

## 执行 bash init.sh  初始化本地配置

### docker-compose up -d 启动n8n

### 访问 http://localhost5678 查看

### 示例配置

```{
  "nodes": [
    {
      "parameters": {
        "options": {}
      },
      "type": "@n8n/n8n-nodes-langchain.chatTrigger",
      "typeVersion": 1.1,
      "position": [
        0,
        0
      ],
      "id": "d424efc7-9c2f-4c7b-88db-3fd494f99b18",
      "name": "When chat message received",
      "webhookId": "a53d7c40-60c4-4fca-a459-1be187f1b758"
    },
    {
      "parameters": {
        "options": {}
      },
      "type": "@n8n/n8n-nodes-langchain.agent",
      "typeVersion": 2,
      "position": [
        220,
        0
      ],
      "id": "d18d8312-6cff-4a00-909e-0a9d5332e7db",
      "name": "AI Agent"
    },
    {
      "parameters": {
        "model": {
          "__rl": true,
          "value": "qwen-max-latest",
          "mode": "list",
          "cachedResultName": "qwen-max-latest"
        },
        "options": {}
      },
      "type": "@n8n/n8n-nodes-langchain.lmChatOpenAi",
      "typeVersion": 1.2,
      "position": [
        140,
        200
      ],
      "id": "f635c7e9-3ae1-465f-8af1-a24db19c4072",
      "name": "OpenAI Chat Model",
      "credentials": {
        "openAiApi": {
          "id": "PRFj4zcmn79GbHrk",
          "name": "qianwen"
        }
      }
    },
    {
      "parameters": {
        "sseEndpoint": "https://mcp.amap.com/sse?key=",
        "include": "selected",
        "includeTools": [
          "maps_weather"
        ]
      },
      "type": "@n8n/n8n-nodes-langchain.mcpClientTool",
      "typeVersion": 1,
      "position": [
        400,
        220
      ],
      "id": "d7f9b9b1-f91b-420c-a7e3-5eb111684a5b",
      "name": "MCP Client"
    }
  ],
  "connections": {
    "When chat message received": {
      "main": [
        [
          {
            "node": "AI Agent",
            "type": "main",
            "index": 0
          }
        ]
      ]
    },
    "OpenAI Chat Model": {
      "ai_languageModel": [
        [
          {
            "node": "AI Agent",
            "type": "ai_languageModel",
            "index": 0
          }
        ]
      ]
    },
    "MCP Client": {
      "ai_tool": [
        [
          {
            "node": "AI Agent",
            "type": "ai_tool",
            "index": 0
          }
        ]
      ]
    }
  },
  "pinData": {},
  "meta": {
    "templateCredsSetupCompleted": true,
    "instanceId": "0308fc0dd6f7ea4acc3ebbd2ea1771c6b0c58d55c8d159408531598db13de5ae"
  }
}
```
