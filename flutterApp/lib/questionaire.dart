import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './textWidget.dart';

class Questionaire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final productKnowledgeController = TextEditingController();
  final productFeasabilityController = TextEditingController();
  final marketKnowledgeController = TextEditingController();
  final marketEducationAbilityController = TextEditingController();
  final customerPersonaKnowledgeController = TextEditingController();
  final customerBuyExecutionController = TextEditingController();
  final competitionKnowledgeController = TextEditingController();
  final competitionExecutionController = TextEditingController();
  final founderExperienceInMarketController = TextEditingController();
  final founderBusinessExperienceController = TextEditingController();
  final founderCoachableFounderController = TextEditingController();
  final overallController = TextEditingController();
  final feedbackForFounderController = TextEditingController();
  final internalFeedbackController = TextEditingController();
  final inputText = "Please rate from 1-5";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    productKnowledgeController.dispose();
    productFeasabilityController.dispose();
    marketKnowledgeController.dispose();
    marketEducationAbilityController.dispose();
    customerPersonaKnowledgeController.dispose();
    customerBuyExecutionController.dispose();
    competitionKnowledgeController.dispose();
    competitionExecutionController.dispose();
    founderExperienceInMarketController.dispose();
    founderBusinessExperienceController.dispose();
    founderCoachableFounderController.dispose();
    overallController.dispose();
    feedbackForFounderController.dispose();
    internalFeedbackController.dispose();
    String inputText = "Please rate from 1-5";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Map map = {
      'productKnowledge': 'Product Knowledge',
      'productFeasability': 'Product Feasability',
      'marketKnowledge': 'Market Knowledge',
      'marketEducationAbility': 'Market Education',
      'customerPersonaKnowledge': 'Customer PersonaKnowledge',
      'customerBuyExecution': 'customerBuyExecution',
      'competitionKnowledge': 'competitionKnowledge',
      'competitionExecution': 'competitionExecution',
      'founderExperienceInMarket': 'founderExperienceInMarket',
      'founderBusinessExperience': 'founderBusinessExperience',
      'founderCoachableFounder': 'founderCoachableFounder',
      'overall': 'overall',
      'feedbackForFounder': 'feedbackForFounder',
      'internalFeedback': 'internalFeedback',
    };

    print("Screen Size is.... ");
    print(screenSize);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'pitchNameHere',
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.20,
            10,
            MediaQuery.of(context).size.width * 0.20,
            10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          const InputDecoration(helperText: "First name"),
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          const InputDecoration(helperText: "Last name"),
                    ),
                  ),
                  Flexible(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration:
                          const InputDecoration(helperText: "Email on file"),
                    ),
                  ),
                ],
              ),
              textClass(
                'Product Knowledge',
              ),
              TextField(
                controller: productKnowledgeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Product Feasability',
              ),
              TextField(
                controller: productFeasabilityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Market Knowledge',
              ),
              TextField(
                controller: marketKnowledgeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Market Education Ability',
              ),
              TextField(
                controller: marketEducationAbilityController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Customer Persona Knowledge',
              ),
              TextField(
                controller: customerPersonaKnowledgeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Customer Buy/Execution',
              ),
              TextField(
                controller: customerBuyExecutionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Competition Knowledge',
              ),
              TextField(
                controller: competitionKnowledgeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Competition Execution',
              ),
              TextField(
                controller: competitionExecutionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Founder Experience in Market',
              ),
              TextField(
                controller: founderExperienceInMarketController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Founder Business Experience',
              ),
              TextField(
                controller: founderBusinessExperienceController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Founder Coachable Founder',
              ),
              TextField(
                controller: founderCoachableFounderController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Overall',
              ),
              TextField(
                controller: overallController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: inputText,
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Feedback for Founder',
              ),
              TextField(
                controller: feedbackForFounderController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Please leave feedback for the founder [external]",
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              textClass(
                'Internal Feedback',
              ),
              TextField(
                controller: internalFeedbackController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Please leave feedback for the founder [internal]",
                ),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  map['productKnowledge'] = productKnowledgeController.text;
                  map['productFeasability'] = productFeasabilityController.text;
                  map['marketKnowledge'] = marketKnowledgeController.text;
                  map['marketEducationAbility'] =
                      marketEducationAbilityController.text;
                  map['customerPersonaKnowledge'] =
                      customerPersonaKnowledgeController.text;
                  map['customerBuyExecution'] =
                      customerBuyExecutionController.text;
                  map['competitionKnowledge'] =
                      competitionKnowledgeController.text;
                  map['competitionExecution'] =
                      competitionExecutionController.text;
                  map['founderExperienceInMarket'] =
                      founderExperienceInMarketController.text;
                  map['founderBusinessExperience'] =
                      founderBusinessExperienceController.text;
                  map['founderCoachableFounder'] =
                      founderCoachableFounderController.text;
                  map['overall'] = overallController.text;
                  map['feedbackForFounder'] = feedbackForFounderController.text;
                  map['internalFeedback'] = internalFeedbackController.text;
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text(map['productKnowledge'] +
                            '\n' +
                            map['productFeasability'] +
                            '\n' +
                            map['marketKnowledge'] +
                            '\n' +
                            map['marketEducationAbility'] +
                            '\n' +
                            map['customerPersonaKnowledge'] +
                            '\n' +
                            map['customerBuyExecution'] +
                            '\n' +
                            map['competitionKnowledge'] +
                            '\n' +
                            map['competitionExecution'] +
                            '\n' +
                            map['founderExperienceInMarket'] +
                            '\n' +
                            map['founderBusinessExperience'] +
                            '\n' +
                            map['founderCoachableFounder'] +
                            '\n' +
                            map['overall'] +
                            '\n' +
                            map['feedbackForFounder'] +
                            '\n' +
                            map['internalFeedback']),
                      );
                    },
                  );
                },
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
