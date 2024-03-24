public class Lasagna {
	 	static int timePrepareLasagna = 40;
	 	static int timePrepareLayer = 2;

		public int expectedMinutesInOven(){
			return timePrepareLasagna;
		}

		public int remainingMinutesInOven(int time){
			return timePrepareLasagna - time;
		}

		public int preparationTimeInMinutes(int layer){
			return timePrepareLayer * layer;
		}

		public int totalTimeInMinutes(int layer, int time){
			int timeLayer = layer * timePrepareLayer;
			return time + timeLayer;
		}
}
