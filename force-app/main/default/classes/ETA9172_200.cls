public with sharing class ETA9172_200 implements iETAElement {
	public void process(rHDevOps__ETA_Element__c etaElement) {
		System.debug('ETA 9172 200 package processing here');

		insert new rHDevOps__ETA_Result__c(rHDevOps__Result__c = etaElement.Name + ' package ETA9172_200 processor');
	}
}
