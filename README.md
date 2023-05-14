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
