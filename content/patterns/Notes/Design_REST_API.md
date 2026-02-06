+++
title = "How to design RESTful APIs"
tags = ["note", "rest", "api", "howto"]
+++

## Date: 04/11/2020 Frank Gao

This is course note for the following online course:
"Designing RESTful APIs" on LinkedIn by Keith Casey

https://www.linkedin.com/learning/designing-restful-apis/welcome?u=3322

Course completed on Apr 11, 2020

## Why good API design important?

- What function to expose
- How to expose
- Best way to expose
- Assumptions
- Test and validate assumptions
- Rethink with unexpected use cases
- Versioning
- Backward compability

Think of 3 aspects, they have to aligned:
- What API does
- What the API makes easy
- What the user want to do

## How to we add an API?

| | Bolt-on Strategy | Facade Strategy | Greenfield Strategy |
|--|--|--|--|
| Pro | Brute-force approach | replacing system piece by piece / keep working system functioning | API first o rmobile first mindset. New technologies and architectures |
| Con | Leaking internal design | Multiple mindsets / hard to replicate behavior 1:1 | Massive upfront investment before benefit from it |

## How to modeling API?

### 3 rules
- Don't focus on tools
- Have a consistent process
  - Doc things same way
  - Team work sync always
- It does not count if not doc it.
  - Design may not clear
  - Risk is unassessed

**Conclusion**: doc everything

## Modeling process

Understand the business process

### 1. Identify users
  - Who: person/bot/entity
  - Scope: Internal or External?
  - Attitude: Active or Passive?
### 2. Identify activities

Example: Order an food
1. place an order
2. wait for the order
3. receive the order

### 3. Break into atomic functions

Above is from user perspective, complete picture is:
1. customer search for a food and decide
1. customer place an order with the cashier
1. cashier passes the order to chief
1. chief ACK and tell cashier it's ok to cook
1. cashier calculate the bill
1. user make payment, accepted/rejected
1. if accepted, chief cook the food
1. deliver the food to customer

Example 2： online book order
1. view items
1. add item to cart
1. remove items
1. checkout
1. fullfil and ship order
1. view order

Validate the API to avoid ambiguities
- Check the assumptions
- Ask customer

### 4. Create API definitions

- Identify the resources. Find the nouns
  - items/cart/order/customer/bill
- GET/DELETE/PUT/POST/PATCH
  - GET: retrive a resource
    - List: get items
    - View: get item
  - DELETE: delete a resource
  - PUT: update existing record
  - POST: create/update/anything not fit the first 3 verbs

Now we can decide the definitions of the steps in example 2:
1. View items
    - GET: List items
    - GET: View item
1. Add item to cart
    - POST: Create new cart
1. Remove items
    - PUT: update existing cart
1. Checkout
    - POST: other resources
1. Fullfil and ship order
    - Create order is done in POST checkout
    - GET: View order
    - POST: cancel order
1. Customer Resource
    - Customer registration: POST
    - View customer: GET

Types of relationships between resources
  - Independent
    - Can exist on its own without any other resources
    - Movie and actors
  - Dependent
    - Can only exist if other resource already exists
    - Characters in movies
  - Associative
    - Can be dependent or independent but needs additional information to describe it
    - One actor play multiple characters
    - One character played by multiple actors

### 5. Validate API

1. card of scenarios
1. use microframework

## HTTP

- HTTP is a protocol
- XML is a markup language
- JSON is a notation
- XML standards can add structure
- JSON spec can add context
- REST is none of the above

## HTTP Response Codes and Headers



## REST APIS: 6 constraints

1. Client-Server Architecture
1. Stateless Architecture
1. Cacheable
1. Layered Systems
1. Code on Demand
1. Iniform Interfaces
    - ID of resources
    - Manipulate resources
    - Self-descriptive messages
    - Can discover links

## API Design patterns

- Authentication (AuthN)
- Authorization (AuthZ)

- AuthN is who you are
- AuthZ is what you can do

### 3 ways to implement them

1. API Keys: Put in header, url or body
    - Pro:
      - Easiest way
    - Con:
      - leak
      - not easy to update
1. Implement your own AuthN/AuthZ protocal
    - Pro
      - Only you know
    - Con
      - Untested, unproven
      - Training cost
      - No supporting tool
1. OAuth 2.0
    - Pro
      - Reliable and well established
      - Massive ecosystem
      - Open-source and commercial options
    - Con
      - Complicated
      - Learning curve steap

## API Versioning

2 ways to versioning:
1. via URL
1. via Accept Header

## Payload

- Key/Value pairs
- Media Types
  - Collection + JSON
  - HAL (Hypertext Application Language) + JSON
  - Ion Hypermedia Type

## Hypermedia

Hyper: the media is not linear, it can begining in the middle

## Advanced HTTP headers: Content negotiation and caching

- Content negotiation: explicitly response based on the request
- Caching: ETag
  - Client makes request
  - Server response with ETag
  - Client makes a HEAD rquest (same request as before)
  - If data not changed, server returns the same ETag
  - If data is changed, server returns the full request

## Documentations

- Easy to search
- Easy to diff
- Easy to update
- Readability

Jekyll/Slate

## SDK

- Succinct: user can write less code for same thing
- Purposeful: doc the behaviors
- Open Source
- Idiomatic: puthon SDK should looks like python
- Logical

Make users' lives easier

Ask existing user's demand

## Final

Conference:
  - API Strategy & Pratice
  - REST FEST: www.restfest.org

Book
  - A pratical approach to API Design
