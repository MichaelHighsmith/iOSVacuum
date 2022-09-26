# iOSVacuum

Adding iOSVacuum/SwiftLint to your app:

1.  After loading this package into your app using SPM, create a file named '.swiftlint.yml' at the root level of your project. Copy the contents of 'swiftlint.yml' located in this package into your new file.

2.  In your project's Build Phases create a new Run Script Phase and name it Swift Lint (or something comprable). Move this phase to execute just before 'Compile Sources' and copy the following into its execution:

export PATH="$PATH:/opt/homebrew/bin"
if which swiftlint > /dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi

3.  That's it! Any customizations you want to make to your rules can be done in your own  .swiftlint.yml file, and updating this package to the newest version will update its local swiftlint.yml file for copy/pasting to ensure your coding standards are up to date.
