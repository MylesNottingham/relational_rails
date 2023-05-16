# User Stories

## Iteration 1

### CRUD

&nbsp;

[x] done

User Story 1, Resort Index

For each resort table
As a visitor
When I visit '/resorts'
Then I see the name of each resort record in the system

&nbsp;

[x] done

User Story 2, Resort Show

As a visitor
When I visit '/resorts/:id'
Then I see the resort with that id including the resort's attributes
(data from each column that is on the resort table)

&nbsp;

[x] done

User Story 3, Guest Index

As a visitor
When I visit '/guests'
Then I see each guest in the system including the guest's attributes
(data from each column that is on the guest table)

&nbsp;

[x] done

User Story 4, Guest Show

As a visitor
When I visit '/guests/:id'
Then I see the guest with that id including the guest's attributes
(data from each column that is on the guest table)

&nbsp;

[x] done

User Story 5, ResortGuests Index

As a visitor
When I visit '/resorts/:resort_id/guests'
Then I see each guest that is associated with that resort and their attributes
(data from each column that is on the guest table)

### ActiveRecord

&nbsp;

[x] done

User Story 6, Resort Index sorted by Most Recently Created

As a visitor
When I visit the Resort Index,
I see that records are ordered by most-recently-created first
And next to each of the records I see when it was created

&nbsp;

[x] done

User Story 7, ResortGuest Count

As a visitor
When I visit a Resort's Show page
I see a count of the number of guests associated with this resort

### Usability

&nbsp;

[x] done

User Story 8, Guest Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Guest Index

&nbsp;

[x] done

User Story 9, Resort Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Resort Index

&nbsp;

[x] done

User Story 10, ResortGuests Index Link

As a visitor
When I visit a Resort Show page ('/resorts/:id')
Then I see a link to take me to that Resort's Guests Index page ('/resorts/:id/guests')

&nbsp;

## Iteration 2

### CRUD 2

&nbsp;

[x] done

User Story 11, Resort Creation

As a visitor
When I visit the Resorts Index page
Then I see a link to create a new resort record, "New Resort"
When I click this link
Then I am taken to '/resorts/new' where I see a form for a new resort record
When I fill out the form with a new resort's attributes:
And I click the button "Create Resort" to submit the form
Then a `POST` request is sent to the '/resorts' route,
a new resort record is created,
and I am redirected to the Resort Index page where I see the new resort displayed.

&nbsp;

[x] done

User Story 12, Resort Update

As a visitor
When I visit a Resort Show page
Then I see a link to update the resort "Update Resort"
When I click the link "Update Resort"
Then I am taken to '/resorts/:id/edit' where I see a form to edit the resort's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/resorts/:id',
the resort's info is updated,
and I am redirected to the Resort Show page where I see the resort's updated info

&nbsp;

[x] done

User Story 13, ResortGuest Creation

As a visitor
When I visit a ResortGuests Index page
Then I see a link to add a new guest to that resort "Add New Guest"
When I click the link
I am taken to '/resorts/:resort_id/guests/new' where I see a form to add a new guest
When I fill in the form with the guest's attributes:
And I click the button "Create Guest"
Then a `POST` request is sent to '/resorts/:resort_id/guests',
a new guest object/row is created for that resort,
and I am redirected to the ResortGuests Index page where I can see the new guest listed

&nbsp;

[x] done

User Story 14, Guest Update

As a visitor
When I visit a Guest Show page
Then I see a link to update that guest "Update Guest"
When I click the link
I am taken to '/guests/:id/edit' where I see a form to edit the guest's attributes:
When I click the button to submit the form "Update Guest"
Then a `PATCH` request is sent to '/guests/:id',
the guest's data is updated,
and I am redirected to the Guest Show page where I see the guest's updated information

&nbsp;

### ActiveRecord 2

&nbsp;

[x] done

User Story 15, Guest Index only shows `true` Records

As a visitor
When I visit the Guest Index
Then I only see records where the boolean column is `true`

&nbsp;

[x] done

User Story 16, Sort Resort's Guests in Alphabetical Order by name

As a visitor
When I visit the Resort's Guests Index Page
Then I see a link to sort guests in alphabetical order
When I click on the link
I'm taken back to the Resort's Guest Index Page where I see all of the resort's guests in alphabetical order

&nbsp;

### Usability 2

&nbsp;

[x] done

User Story 17, Resort Update From Resort Index Page

As a visitor
When I visit the Resort Index page
Next to every resort, I see a link to edit that resort's info
When I click the link
I should be taken to that resort's edit page where I can update its information just like in User Story 12

&nbsp;

[ ] done

User Story 18, Guest Update From Guests Index Page

As a visitor
When I visit the Guest Index page or a ResortGuest Index page
Next to every guest, I see a link to edit that guest's info
When I click the link
I should be taken to that guest's edit page where I can update its information just like in User Story 14

&nbsp;
