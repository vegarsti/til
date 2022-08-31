---
title: "Aggrgeate statistics in AWS Cloudwatch"
tags: [aws]
---
Count entries in AWS Cloudwatch by using `count() by bin(period)`.

To get daily counts of a Lambda's requests, do this:

```
fields @timestamp, @message
| filter @message like /START RequestId/
| stats count() as count by bin(1d) as day
| sort count desc
```

