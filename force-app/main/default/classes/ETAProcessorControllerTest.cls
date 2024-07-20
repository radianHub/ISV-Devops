@isTest
private class ETAProcessorControllerTest {
	@isTest
	private static void runProcessor() {
		rHDevOps__ETA_Element__c element = new rHDevOps__ETA_Element__c(
			Name = '100',
			rHDevOps__Processor__c = 'ETA9172_100'
		);
		insert element;

		Test.startTest();
		ETAProcessorController.runProcessor();
		Test.stopTest();
	}
}
