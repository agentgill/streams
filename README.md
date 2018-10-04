Streams are durable event pipelines that give your code increased limits and the ability to recover from any error.

# Getting Started

- Install the [Streams](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t6F000002LPBs) package.

# Simplest Possible Thing

<img src="https://github.com/bigassforce/streams/wiki/resources/Home/success.png" align="right" />


1. From the **Streams** app, go to the **Services** tab.
2. Click the <img src="https://github.com/bigassforce/streams/wiki/resources/Home/email.png" /> **Log** service and view its detail page.
3. Click **Enqueue Streaming Event** then check your email.

See the log email? Here's what happened:

First your event was stored in a record, then the Log service processed it inside a try-catch block with a savepoint. Although this service just sends an email, the key takeaway is this: everything processed safely in an async context with increased limits, without writing code.

# Examples

<a href="https://player.vimeo.com/video/287756059?autoplay=1" target="_blank"><img src="https://raw.githubusercontent.com/wiki/bigassforce/streams/resources/Home/streams-deactivate-users-thumb.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://player.vimeo.com/video/288027938?autoplay=1" target="_blank"><img src="https://raw.githubusercontent.com/wiki/bigassforce/streams/resources/Home/streams-csv-into-flow-thumb.png" /></a>

# Next Steps

- Read the [Concepts](https://github.com/bigassforce/streams/wiki/Concepts) to learn about streaming events.
- Follow the [Hello World Tutorial](https://github.com/bigassforce/streams/wiki/Hello-World-Tutorial) to arrange services in a saga.
- Explore the [Code](https://github.com/bigassforce/streams) to see how core services work.

# By Role

 ## Admins

 - **Act**  effectively by addressing service issues with the appropriate developer.
 - **Script** business logic that supports business services.
 - **Configure** all component metadata using point and click.
 - **Observe** why and when logic ran - in real time or the past.
 - **Indicate** service progress with images on lists and page layouts.


## Developers

- **Execute resilient services** against stored events - failures can always be reprocessed.
- **Move business flows** including all configuration between orgs with a single container.
- **Create testable code** using components adhering to an interface.
- **Execute logic consistently** by running all services under the Automated Process user.
- **Ingest** millions of raw JSON events for stream processing using the Bulk API .

## Consultants

- **Integrate** using out of box HTTP / SMTP / SQL adapters.
- **Schedule** durable jobs using heartbeat events instead of cron and Apex.
- **Control scope** with clear areas of responsibility
- **Rely on a built-in safety net** should errors occur.
- **Reduce coupling** between packages and departments using dynamically typed events
- **Publish/Subscribe** to business events and broadcast custom durable events using topics.

## Analysts

- **Collaborate** around right sized components that all stakeholders can understand.
- **Visualize** scenarios on an interactive canvas with advertised inputs/outputs.
- **Integrate** with Flows and Processes and enqueue streaming events from workflow rules.
- **Compose** sagas that draw a direct line from requirement to implementation.

## Managers

- **Audit** past and present streaming events - understand which logic ran and when.
- **Execute business logic natively** - services are built, tested and deployed on platform.
- **Snapshot configuration** versions and revert to prior versions in near real time.
- **Lower project risk** by avoiding early commitment to architecture. Experiments cost less.
- **Bypass package dependencies** - all logic remains under the full control of the business.

<img src="https://bigass.secure.force.com/pixel?url=https://github.com/bigassforce/streams" />
