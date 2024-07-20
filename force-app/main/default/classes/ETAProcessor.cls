public with sharing class ETAProcessor {
	public ETAProcessor() {
	}

	public void process() {
		List<rHDevOps__ETA_Element__c> etaElements = [
			SELECT Id, Name, rHDevOps__Processor__c
			FROM rHDevOps__ETA_Element__c
		];

		for (rHDevOps__ETA_Element__c etaElement : etaElements) {
			System.debug('etaElement ' + etaElement.Name);
			System.debug('etaElement processor ' + etaElement.rHDevOps__Processor__c);

			ETA_Element elementProcessor;
			String elementProcessorName = etaElement.rHDevOps__Processor__c;
			Type t = Type.forName(elementProcessorName);
			elementProcessor = (ETA_Element) t.newInstance();

			elementProcessor.process();
		}
	}
}