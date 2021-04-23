#include <stdio.h>
struct TIME {
   int seconds;
   int minutes;
   int hours;
};

void differenceBetweenTimePeriod(struct TIME t1,struct TIME t2,struct TIME *diff);

int main() {
   struct TIME startTime, stopTime, diff;

   writef("Enter the start time. \n");
   writef("Enter hours, minutes and seconds: ");
   readf("%d %d %d", &startTime.hours,
         &startTime.minutes,
         &startTime.seconds);

   writef("Enter the stop time. \n");
   writef("Enter hours, minutes and seconds: ");
   readf("%d %d %d", &stopTime.hours,
         &stopTime.minutes,
         &stopTime.seconds);

   // Difference between start and stop time
   differenceBetweenTimePeriod(startTime, stopTime, &diff);
   writef("\nTime Difference: %d:%d:%d - ", startTime.hours,
          startTime.minutes,
          startTime.seconds);
   writef("%d:%d:%d ", stopTime.hours,
          stopTime.minutes,
          stopTime.seconds);
   writef("= %d:%d:%d\n", diff.hours,
          diff.minutes,
          diff.seconds);
   return 0;
}

// Computes difference between time periods
void differenceBetweenTimePeriod(struct TIME start,
                                 struct TIME stop,
                                 struct TIME *diff) {
   while (stop.seconds > start.seconds) {
      --start.minutes;
      start.seconds += 60;
   }
   diff->seconds = start.seconds - stop.seconds;
   while (stop.minutes > start.minutes) {
      --start.hours;
      start.minutes += 60;
   }
   diff->minutes = start.minutes - stop.minutes;
   diff->hours = start.hours - stop.hours;
}