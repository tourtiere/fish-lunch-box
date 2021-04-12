int pins [4] = {15, 2, 0, 4};

int seq [8][4] = {
  { 1, 0, 0, 1 },
  { 1, 0, 0, 0 },
  { 1, 1, 0, 0 },
  { 0, 1, 0, 0 },
  { 0, 1, 1, 0 },
  { 0, 0, 1, 0 },
  { 0, 0, 1, 1 },
  { 0, 0, 0, 1 },
};

int stepsPerRevolution = 512;

void rotate(int holesCount) {
  int steps = 512 / holesCount;
  for (int stepIndex = 0; stepIndex < steps; stepIndex++) {
    for (int i = 0; i < 8; i++) {
      for (int pin = 0; pin < 4; pin++) {
        digitalWrite(pins[pin], seq[i][pin]);
        delay(1);
      }
    }
  }
}

void wakeup() {
  esp_sleep_wakeup_cause_t wakeup_reason;
  wakeup_reason = esp_sleep_get_wakeup_cause();

  if (wakeup_reason == ESP_SLEEP_WAKEUP_TIMER) {
    rotate(12);
  }

}

void setup() {
  for (int pin = 0; pin < 4; pin++) {
    pinMode(pins[pin], OUTPUT);
  }
  wakeup();
  esp_sleep_enable_timer_wakeup(12ULL * 60 * 60 * 1000 * 1000);
  esp_deep_sleep_start();
}

void loop() {

}
