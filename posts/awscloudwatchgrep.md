---
title: "How to filter logs in AWS Cloudwatch"
date: "2021-11-04T12:56:46Z"
tags: [aws]
---
To get all log messages containing `pattern`, do this in CloudWatch Logs Insights:

```javascript
fields @timestamp, @message
| filter @message like /pattern/
```
