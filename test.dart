import 'dart:async';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'supporting_files/steps/given_the_characters.step.dart';
import 'supporting_files/steps/then_expect_numeric_result.step.dart';
import 'supporting_files/steps/when_the_characters_are_counted.step.dart';
import 'supporting_files/worlds/custom_world.world.dart';

Future<void> main() {
  final steps = [
    GivenTheCharacters(),
    WhenTheCharactersAreCounted(),
    ThenExpectNumericResult()
  ];
  final config = TestConfiguration()
    ..stepDefinitions = steps
    ..features = [Glob('**.feature')]
    ..tagExpression = 'not @skip'
    ..reporters = [
      StdoutReporter(MessageLevel.verbose),
      ProgressReporter(),
      TestRunSummaryReporter(),
    ]
    ..createWorld =
        (TestConfiguration config) => Future.value(CalculatorWorld());

  return GherkinRunner().execute(config);
}
