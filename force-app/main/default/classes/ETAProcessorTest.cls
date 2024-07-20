@isTest
private class ETAProcessorTest {
	@isTest
	private static void process() {
		rHDevOps__ETA_Element__c element = new rHDevOps__ETA_Element__c(
			Name = '100',
			rHDevOps__Processor__c = 'ETA9172_100'
		);
		insert element;

		Test.startTest();
		ETAProcessor processor = new ETAProcessor();
		processor.process();
		Test.stopTest();
	}
}
