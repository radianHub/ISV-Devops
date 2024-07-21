public with sharing class ETAProcessor {
	public ETAProcessor() {
	}

	public void process() {
		List<rHDevOps__ETA_Element__c> etaElements = [
			SELECT Id, Name, rHDevOps__Processor__c, rHDevOps__Namespace__c, rHDevOps__Processor_Override__c
			FROM rHDevOps__ETA_Element__c
		];

		for (rHDevOps__ETA_Element__c etaElement : etaElements) {
			System.debug('etaElement ' + etaElement.Name);
			System.debug('etaElement processor ' + etaElement.rHDevOps__Processor__c);

			iETAElement elementProcessor;
			String elementProcessorName = etaElement.rHDevOps__Processor__c;

			String namespace = 'rHDevOps';
			if (etaElement.rHDevOps__Processor_Override__c != null) {
				namespace = etaElement.rHDevOps__Namespace__c != null ? etaElement.rHDevOps__Namespace__c : '';
			}

			Type t = Type.forName(namespace, elementProcessorName);
			elementProcessor = (iETAElement) t.newInstance();

			elementProcessor.process(etaElement);
		}
	}
}
