public with sharing class ETAProcessorController {
	@AuraEnabled
	public static void runProcessor() {
		ETAProcessor processor = new ETAProcessor();
		processor.process();
	}
}
