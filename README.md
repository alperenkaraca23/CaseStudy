```markdown
# UserFetcherApp

UserFetcherApp is a SwiftUI-based application that fetches and displays a list of users from an API. The app follows the MVVM architecture, ensuring clean code organization and separation of concerns.

## Features

- Fetches user data from a web API.
- Displays a list of users with a simple and clean UI.
- Provides a detailed view for each user.
- Implements the MVVM pattern for better code maintainability.

## Technologies Used

- **SwiftUI**: Used for the user interface.
- **MVVM Architecture**: Ensures modular and maintainable code.
- **URLSession**: Handles API requests.
- **Codable**: Decodes JSON responses into Swift models.

## Project Structure

1. **Model**
   - Created a `User` model that conforms to `Codable` for JSON decoding.

2. **WebService**
   - Implemented a network service to make API calls and fetch user data.

3. **UserViewModel**
   - Integrated the API endpoint and implemented a function to download users.
   - Tested the API call to ensure data retrieval works correctly.

4. **ContentView**
   - Connected `UserViewModel` to display a list of users.
   - Designed a simple and intuitive UI for presenting user data.

5. **DetailView**
   - Built a basic detail screen to display more information about a selected user.
```
## Video Demo

https://github.com/user-attachments/assets/b16318c3-c5f7-45bc-8ffb-d89578da47e1


