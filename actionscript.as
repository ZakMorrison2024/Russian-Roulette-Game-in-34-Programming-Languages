package {
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.utils.shuffle;

    public class RussianRoulette extends Sprite {
        public function RussianRoulette() {
            var chambers:Array = [false, false, false, false, false];
            chambers.push(true);  // 1 chamber with a bullet
            shuffle(chambers);  // Shuffle chambers

            trace("Welcome to Russian Roulette!");
            stage.addEventListener(MouseEvent.CLICK, pullTrigger);
        }

        private function pullTrigger(event:MouseEvent):void {
            if (chambers[0]) {
                trace("Bang! You're dead!");
            } else {
                trace("Click. You're safe... for now.");
            }
        }
    }
}
