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

User Story 5, Resorts Guests Index

As a visitor
When I visit '/resorts/:resort_id/guests'
Then I see each guest that is associated with that resort with each guest's attributes
(data from each column that is on the guest table)

### ActiveRecord

&nbsp;

[ ] done

User Story 6, Resort Index sorted by Most Recently Created

As a visitor
When I visit the resort index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created

&nbsp;

[ ] done

User Story 7, Resort Guest Count

As a visitor
When I visit a resort's show page
I see a count of the number of guests associated with this resort
