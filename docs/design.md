# HeadsUp App Design Document

# Overview
GuessQuest (credit AI) is a word-guessing game that involves describing a 
word or phrase to an invidual that must guess that word or phrase.

# Context and Scope
GuessQuest will be a competitor to apps like Heads Up, Charades, etc. 
However, it will include the ability to create custom decks with up 
to 500 cards and share those decks with others, a feature not 
included in the free version of any other apps. This app will not 
be paid, and there will be no social media aspect. In other words,
users will not be able to interact outside of sharing decks via 
sms, email, etc.

# Goals
- Allow users to create custom decks
- Allow users to play decks with variable timer lengths
- Allow users to share decks between accounts via sms, email, etc.

# Non-Goals
- Allow users to create accounts and interact with other players
- Display any sort of leaderboard
- Release new decks regularly

# Design

## System Context Diagram
Because this is a standalone system, there is no context to situate the project in.

## APIs
Because this is an application with no ability to add plugins, there 
will be no publicly exposed API.

## Data Storage
See `docs/storage.md` for more information. At a high level, we will be using a 
local instance of __SQLite__ for storing decks and __UserDefaults__ for storing
user preferences.

## Degree of Constraint
This is a well-known problem with a well-known solution. All the goals are known
and a solution can be crafted with little ambiguity.

# Alternatives Considered

# Cross-cutting Concerns

# Requirements
- Two decks shall not have the same name (case-sensitive)
- A deck must contain a name.
- A deck name shall not exceed 100 unicode characters.
- A deck may contain a description.
- A deck description, if it has one, shall not exceed 150 words.
- A deck may contain an image.
- A deck must contain a list of cards that shall be longer than 0 but not exceed 500 items in length.
- A card must contain text that shall be longer than 0 but but not exceed 150 unicode characters in length.

# User Preferences Options
- light/dark mode
- default time for a round
- sound on/off
- vibrations
- video
- tilt/touch

# High-level Features
- Deck creation
- Deck editing
- Deck playing
- User preferences editing
- Deck sharing

# Rollout plan

## Phase 1
See GitHub.

## Phase 2

## Phase 3

## Background
[Context and history of the project]

## Detailed Design

### Architecture
[High-level system architecture]

### Data Model
[Description of data structures and relationships]

### API Design
[API endpoints and their specifications]

### User Interface
[UI/UX design specifications]

### Security Considerations
[Security measures and considerations]

### Performance Considerations
[Performance requirements and optimizations]

### Testing Strategy
[Testing approach and requirements]

### Monitoring and Alerting
[Monitoring metrics and alerting thresholds]

### Deployment Strategy
[Deployment process and requirements]

### Rollout Plan
[Phased rollout strategy]

## Alternatives Considered
[Other approaches that were considered and why they were rejected]

## Open Questions
[Unresolved issues that need discussion]

## Timeline
[Project timeline and milestones]

## References
[Links to related documents and resources]

## Comments from other apps like this
- don't want to have to pay for decks (obviously)
- want to be able to change the time limit
- deck summaries
- crashes
- want options
- custom decks
- want a lot of cards

## Ideas
- come with pre-packaged decks that you can add to or take away from