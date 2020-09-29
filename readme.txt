Daily Effort Tracker

---------------------------------------------------------------------------------------------

GETTING SET UP:
	STEP 1:
		To get set up on your computer - Copy the 'EffortTrackerProgram' folder to local C:\ drive 
	STEP 2:
		Right click on 'EffortTracker' Batch file and run as administrator

WALK THROUGH:
	1. Tester name: Enter first name
	2. Enter Date
	3. Test Train: Enter the month of current test pass
	4. OS: Select the Operating system under test. [20H1, 19H1, 19H2 etc...]
	5. Select device under test 
	6. Select the SKU of the DUT from the available options
	7. Select a test category
	8. Select a collateral under testing
	9. Choose a task that you want to record from the available options
		-If you worked on test execution: Enter total test cases executed
							Number of test cases that passed
							Number of test cases that failed
							Number of test cases that are not applicable
							Number of test cases that are blocked
							Number of test cases in total
							Completion percentage
	10. Enter number of hours spend on chosen task
	11. Enter any additional comments/remarks
	12. Choose if you want to add another entry or not
		-If you choose to add another entry, you will have a choice of adding another task or adding a new entry
		-Adding another task is useful if the test pass, collateral, device stays the same. You can add a new task and keep the information from Step 1-8 the same.
		-Adding a new entry will allow you to change information starting from step 3 of the walk through
	13. Choose if you want to submit your effort tracker. Once you done adding to the tracker, You can choose to submit the report by choosing Y on this step.
		-This will submit an excel report that will be generated.
		-You will see a "Daily Effort Submitted!" message when your report has been submitted successfully


Master Tracking File Generator

--------------------------------------------------------------------------------

Set Up:
	1. Copy the 'MasterTrackingFile.cmd' file to folder containing csv files
	2. Run the file to merge all csv files in folder 
	- A csv file titled 'MasterTrackingFile.csv' will be generated with combined data from all csv files in folder