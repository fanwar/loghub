## FAQueuedLogger

- Client code sets up an FAQueuedLogger with different FALogTargets: -[[FAQueuedLogger alloc] initWithTargets: <NSArray of targets>];
- Client code: -[FAQueuedLogger log: <format>...]


The above should then cause the logger to send logs to each of its targets

- FAQueuedLogger: sends message to all its log targets to log the message. 
- Each log target then logs the message as appropriate

- Network logger: queue up the log on internal queue. If the queue is larger than some threshold, then flush the queue and write to disk and upload the written log. 