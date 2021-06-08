# Frontend task

## Task description
Build two connected components to query and display results provided by the API.
We would prefer a TypeScript + Vue/React solution but that is not a requirement. Any other framework/library is perfectly fine. We are not expecting it to look "good", so some basic styling to display the results is enough.
Our main focus during the review will be on your architecture decisions. So, while working on the task, treat it as if it was the beginning of a fairly complex project. As such, the result should be easy to extend.

Please provide us with a link to a GitHub repository and a hosted version. GitHub pages would be ideal but any other option works too.

## Optional tasks
Items listed below would help us to better evaluate you but they are not required:
- Semantic layout
- Unit test for at least one UI component
- Unit test for at least one class/service/function handling requests

## Components definition

### List

Acceptance criteria:
- I can see a paginated list of events with a page size of 10.
- I can load more events by clicking a "Load more" button on the bottom.
- I can apply an optional time frame filter to get only results inside that time frame.
- I can see some information about each event in the list
  - Position name
  - Start time
  - End time
- I can click on an event to navigate to the details view


#### Details view

Acceptance criteria:
- I can see the full event details
  - Position name
  - Start time
  - End time
  - List of employees assigned to that event
    - First name
    - Last name
    - Avatar (image)
- I can go back to the list
- I can see an error message if the event does not exist

## API Spec

url: https://fyx8bq1lpa.execute-api.eu-central-1.amazonaws.com/Prod

authorization:
  - type: [Basic](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization)
  - login: frontend@shyftplan.com
  - password: api_test_auth_token

Data is randomly regenerated once a day at 00:00 UTC.

### List

endpoint: `GET /events'

#### Query params:

- `startsAt` 
  - DateTime string in ISO format
  - filter for events that start after passed value.
  - required: no
  - default: no 
- `endsAt`
  - DateTime string in ISO format
  - filter for events that start before passed value.
  - required: no
  - default: no 
- `limit`
  - number
  - pagination page size
  - required: no
  - default: 20
- `offset`
  - number
  - pagination offset
  - required: no
  - default: 0

#### Return value:
```
{
  "items": [
    {
      "id": 740,
      "position": {
        "name": "Computers",
        "color": "yellow",
        "id": 153
      },
      "startsAt": "2020-09-05T09:00:00.000Z",
      "endsAt": "2020-09-05T13:00:00.000Z"
    }
  ],
  "pagination": {
    "offset": 15,
    "limit": 1,
    "count": 27
  }
}
```

#### Possible errors:
- status: 401
  - Not Authorized
- status: 422
  - startsAt is not a valid date
  - endsAt is not a valid date
  - limit is out of range
  - offset is out of range

### Details view

endpoint: `GET /events/{id}'

params:
  - `id` 
  - number
  - id of event
  - required: yes

#### Return value:
```
{
  "id": 740,
  "startsAt": "2020-09-05T09:00:00.000Z",
  "endsAt": "2020-09-05T13:00:00.000Z",
  "position": {
    "name": "Computers",
    "color": "yellow",
    "id": 153
  },
  "employees": [
    {
      "firstName": "Nicolette",
      "lastName": "Hansen",
      "image": "https://cdn.fakercloud.com/avatars/smenov_128.jpg",
      "id": 266
    },
    {
      "firstName": "Stella",
      "lastName": "Wuckert",
      "image": "https://cdn.fakercloud.com/avatars/caspergrl_128.jpg",
      "id": 60
    },
    {
      "firstName": "August",
      "lastName": "Feil",
      "image": "https://cdn.fakercloud.com/avatars/juaumlol_128.jpg",
      "id": 218
    }
  ]
}
```

#### Possible errors:
- status: 401
  - Not Authorized
- status: 404
  - Not found
