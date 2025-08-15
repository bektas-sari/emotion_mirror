import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const EmotionMirrorApp());

class EmotionMirrorApp extends StatelessWidget {
  const EmotionMirrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emotion Mirror',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F4F6),
        primaryColor: const Color(0xFF6D28D9),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF6D28D9),
          secondary: const Color(0xFF9333EA),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            color: Color(0xFF1F2937),
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFF4B5563),
          ),
        ),
      ),
      home: const EmotionScreen(),
    );
  }
}

class EmotionScreen extends StatefulWidget {
  const EmotionScreen({super.key});

  @override
  State<EmotionScreen> createState() => _EmotionScreenState();
}

class _EmotionScreenState extends State<EmotionScreen> {
  String selectedEmotion = '';
  String metaphor = '';
  bool showMetaphor = false;

  final Map<String, List<String>> metaphors = {
    'Happy': [
      'Happiness is sunshine on the soul.',
      'Joy is a balloon that lifts your day.',
      'Happiness is a song stuck in your heart.',
    ],
    'Sad': [
      'Sadness is a rainy window.',
      'Tears are silent poems of the heart.',
      'Sadness is like fog — it softens everything.',
    ],
    'Angry': [
      'Anger is fire — bright but dangerous.',
      'Rage is a storm inside the chest.',
      'Anger is a volcano with a ticking clock.',
    ],
    'Tired': [
      'Fatigue is a heavy backpack on the mind.',
      'Tiredness is like walking through water.',
      'Exhaustion is a paused engine.',
    ],
    'Loved': [
      'Love is a warm blanket in winter.',
      'Being loved is like sunlight through leaves.',
      'Love is gravity for the soul.',
    ],
  };

  void showNewMetaphor(String emotion) {
    final options = metaphors[emotion]!;
    final newMetaphor = options[Random().nextInt(options.length)];
    setState(() {
      selectedEmotion = emotion;
      metaphor = newMetaphor;
      showMetaphor = false;
    });

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        showMetaphor = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final emotions = ['Happy', 'Sad', 'Angry', 'Tired', 'Loved'];
    final emojiMap = {
      'Happy': '😊',
      'Sad': '😔',
      'Angry': '😠',
      'Tired': '😴',
      'Loved': '😍',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emotion Mirror'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'How do you feel today?',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: emotions.map((emotion) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => showNewMetaphor(emotion),
                    child: Text('${emojiMap[emotion]} $emotion'),
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: showMetaphor ? 1.0 : 0.0,
                child: metaphor.isNotEmpty
                    ? Column(
                  children: [
                    Text(
                      'Metaphor for $selectedEmotion:',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Text(
                        '"$metaphor"',
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF4B5563),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
