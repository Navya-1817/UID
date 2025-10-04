void main() {
  // Basic variables
  var name = 'Dart';
  int version = 3;

  // String interpolation
  print('Hello from $name version $version!');

  // Conditional
  if (version >= 3) {
    print('You are using the latest version of Dart.');
  } else {
    print('Consider upgrading Dart.');
  }

  // Loop
  for (int i = 1; i <= 5; i++) {
    print('Step $i');
  }

  // Function call
  greetUser('Navya');
}

// Function definition
void greetUser(String name) {
  print('Welcome, $name!');
}
