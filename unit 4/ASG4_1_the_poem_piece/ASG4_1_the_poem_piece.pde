String[] words = {
  "The", "feeling", "of", "friendship", "from", "the", "start",
  "Is", "that", "special", "feeling", "in", "your", "heart",
  "A", "feeling", "from", "deep", "down", "inside",
  "A", "feeling", "that", "no", "one", "should", "hide",
  "A", "friend", "is", "there", "through", "good", "and", "bad",
  "They", "make", "you", "happy", "when", "you're", "sad",
  "they", "brighten", "up", "your", "darkest", "day",
  "Just", "by", "the", "simple", "thing's", "they", "say",
  "Now", "friendship", "can't", "be bought", "or", "sold",
  "It", "may", "get", "tarnished", "and", "may", "get", "old",
  "You", "can", "overcome", "your", "greatest", "fear",
  "Just", "look", "around", "and", "it", "is", "there",
  "Now", "friendship's", "one", "and", "only", "cost",
  "Is", "to", "make", "sure", "that", "it's", "never", "lost"
};

int numWords = words.length;

Word[] wordObjects = new Word[numWords];

void setup() {
  size(800, 600);
  background(255);
  
  // Initialize Word objects
  for (int i = 0; i < numWords; i++) {
    wordObjects[i] = new Word(words[i], random(width), random(height));
  }
}

void draw() {
  background(78,3,202);
  
  // Display all words
  for (int i = 0; i < numWords; i++) {
    wordObjects[i].updatePosition();
    wordObjects[i].display();
  }
}

void mousePressed() {
  // Check if mouse is pressed on a word
  for (int i = 0; i < numWords; i++) {
    if (wordObjects[i].contains(mouseX, mouseY)) {
      wordObjects[i].startDragging(mouseX, mouseY);
      break; // Exit loop after finding the first word under mouse
    }
  }
}

void mouseReleased() {
  // Stop dragging all words
  for (int i = 0; i < numWords; i++) {
    wordObjects[i].stopDragging();
  }
}

class Word {
  String word;
  float x, y;
  float w = 41; // Width of the word rectangle
  float h = 20; // Height of the word rectangle
  boolean dragging = false;
  float offsetX, offsetY;
  
  Word(String word, float x, float y) {
    this.word = word;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    noStroke();
    noFill();
    rect(x, y, w, h);
    fill(255);
    textAlign(CENTER, CENTER);
    text(word, x + w/2, y + h/2);
    stroke(5);
  }
  
  boolean contains(float px, float py) {
    return (px > x && px < x + w && py > y && py < y + h);
  }
  
  void startDragging(float mx, float my) {
    dragging = true;
    offsetX = mx - x;
    offsetY = my - y;
  }
  
  void stopDragging() {
    dragging = false;
  }
  
  void updatePosition() {
    if (dragging) {
      x = mouseX - offsetX;
      y = mouseY - offsetY;
    }
  }
}
