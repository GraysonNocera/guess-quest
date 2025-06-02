# Storage

# Why?
The requirements of this app entail storing information like user preferences, user scoring, and 
custom decks. As such, a storage layer is necessary.

# Local
Because there shall be no network communication between devices/accounts in the application
(i.e. no social media component), user data will be stored only locally.

# Options
Below are some of the most common options for a local storage layer on iOS.
1. Property list
    - an XML file that stores user settings and information about the app
    - useful for environment values of the application
2. File system
    - useful for storing large documents or images locally
    - URL path creation can be prone to errors
3. UserDefaults
    - the default user database
    - saved as a plist file on disc
    - not encrypted
4. Keychain
    - useful for storing confidential data like passwords, keys, or tokens
5. CoreData
    - framework for managing the model layer in an iOS application
    - not a database but a framework
    - very complicated
6. SwiftData
    - new framework that makes it very easy to load data 
    - integrates well with SwiftUI

# Back of Napkin Math
Maximums of:
- 50 custom decks
- 500 cards in each deck
- 150 characters on each card
- 50 * 500 * 150 = 3,750,000 bytes

# Result: No UserDefaults
According to a rudimentary google search, Apple recommends that you store 
no more than 512 KB in UserDefaults. Furthermore, UserDefaults is loaded 
into memory at app launch, so overloading this storage with too much 
data could significantly slow our application down.
However, even with light requirements
for creating custom decks, we are looking at around 3.75 MB, and this could
grow. While this will be very simple data (mostly just strings), we will 
need some storage mechanism.

# Design Decision
Because we will need to store up to 5 MB of information about custom decks, 
we cannot use UserDefaults or Keychain. However, because we will not have 
very complicated data with intricate relationships, we do not need to 
use CoreData. SwiftData seems too new. As a result, we will be running 
with a __SQLite__ database, hosted locally on the device. However, 
for user preferences such as light/dark mode, default timer length, sound,
vibrations, and tilt/touch, we will use __UserDefaults__.

# SQL tables
- See [lucid chart diagram](https://lucid.app/lucidchart/7580ac0b-0a0f-4eea-8ccd-add6a2d1bc92/edit?beaconFlowId=D1DFAF671F1B6918&invitationId=inv_c5e6712e-721e-43ba-8c0f-30453f4d4994&page=0_0)

# Options for SQL in Swft
- GRDB
- SQLite.Swift