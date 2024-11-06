# 42 Student Info App (Flutter)

This project is a mobile application built using **Flutter** that retrieves and displays information about students from the 42 API. It includes a login mechanism with OAuth2 authentication and presents various details about the student, such as their login, email, skills, completed projects, and more.

![Demo Video](https://github.com/jreverdy/swifty_companion/blob/main/readme_assets/video/swifty_companion.mp4)

## **Project Overview**

The purpose of this project is to familiarize with mobile programming, working with APIs (specifically the 42 API), and Flutter as a mobile framework. The app allows users to interact with the 42 API to fetch and display data for a selected student. The app handles errors, displays relevant information, and ensures a smooth user experience across different screen sizes.

## **Features**

- **Login Screen**: Allows users to log in using OAuth2 authentication and retrieve data from the 42 API.
- **Student Info Screen**: Displays detailed information about a selected student, including:
  - Login, email, mobile, level, location, wallet, evaluations, and profile picture.
  - Skills with level and percentage.
  - List of projects (including failed ones).
- **Error Handling**: Handles errors such as login not found, network errors, etc.
- **Navigation**: Allows navigation between views, including going back to the login screen.
- **Responsive Layout**: Uses modern layout techniques to ensure the app looks good on different screen sizes and platforms.

## **Bonus Features**

- **Token Refresh**: Automatically refreshes the OAuth2 token when it expires to ensure seamless operation without the need for the user to log in again.

## **Tech Stack**

- **Flutter**: Framework for building the cross-platform mobile app.
- **Dart**: Programming language used with Flutter.
- **42 API**: API used to fetch student data.
- **OAuth2**: Authentication method used to securely retrieve data from the 42 API.

##
