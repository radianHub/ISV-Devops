import { LightningElement } from 'lwc';

import runProcessor from '@salesforce/apex/ETAProcessorController.runProcessor';

export default class EtaProcessor extends LightningElement {
	// # APEX

	// * RUN PROCESSOR
	runProcessor() {
		runProcessor()
			.then((result) => {
				console.log('report run result', result);
			})
			.catch((error) => {
				console.log('report run error', error);
			});
	}
	// # HANDLERS

	// * HANDLES RUN BUTTON CLICK
	handleClickRun() {
		console.log('click run');
		this.runProcessor();
	}
}
