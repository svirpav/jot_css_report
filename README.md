# Use cases

## Actors

* Service engineeer (SE) - a person from CSS team who actually handles a problem on a machine in customer premises.
* RnD engineer (RE)
* RnD Product Owner - a person who is in charge of the product.

## New incident reporting

* Service engineer assesses a problem reported by customer, and notices what the problem is.
* Service engineer reports a new incident, and inputs the following information:
    * Date and time, own name
    * Equipment info: serial number, location, usage etc
    * (See example 1)
    * Incident is on creation marked as OPEN. That means customer still expects the problem to be solved.
* Service engineer solves the problem if possible, in which case incident is marked as FIXED. This means the customer considers the problem solved.
* Service engineer attempt to categorize the incident to some existing issue (one or more) in the issue list for that product. 
    * If it is trivial, SE marks the incident as CLOSED and no other action is done, but the incident reports stays connected to the issue.
    * If it is not trivial, SE makes the best guess on which issue it is and leaves the incident as FIXED, and RnD Product Owner will review the incident. 
    * Same happens if SSE believes this is a new issue - new issues are always opened by the product owner, but most of data can come from the incident report.

## Repeated incident reporting

* Service engineer assessing a problem discovers incident of a known issue on another machine.
* SE creates an incident report, inputing only following data:
    * Own and equipment data, date and time and location
    * Issue ID
    (See example 2)

There is no need for any other info, as this is a well known issue, but incident is reported.

## Open incident management

When an issue has been left open during creation, it is escalated as higher priority than any fixed or closed incident - because customer expects it fixed still. 

## Fixed incident management

WHen an issue has been left as fixed, RnD Product Owner should review it and close it.

* RnD Product Owner reviews the incident and tries to reproduce it.
* If needed, SE is contacted for more info.
...

## Issue management

This use-case refers only to issues that were opened as part of CSS incidents. Other issues, as noticed by production or RnD are not described here.

## Reporting issues to other departments

This describes how issues that are not primarilly related to RnD should be handled.

# Data structures

## Incident report example 1
	* Time of the problem.
		- 1.10.2013 9:30 am
	* Environment
		- Location
		- Equipment:
			- Device1: type, serial number,SW ver: REL-XXX-XX-m10plc
			- Environment description: line has 3 handlers, the one with problem is first in the cluster

	* Incident description.
		-PCB stops at the front conveore of M10 handler XXX and do not move anywhere even the next M10 handler YYY all testboxes are not busy.
		-Next M10 handler YYY with free boxes reseted and puted back to operational mode but problems still appears PCB in previous M10 handler XXX does not move anywhere.
		-M10 handler YYY complete power OFF and then puted back to operationla mode but problem still not fixed PCB stays in M10 handler XXX.
		-Both M10 handler XXX and YYY complete power off, power on, removed all products from handler XXX and both handler puted back to operational mode.
		-After 1 hour same problem appears again.
		-Complete power off, power on, removed product from M10 cluster. Cluster put back to operation mode.
		-Cluster was observed for 4 hours problen does not appears any more.
	* Issue ME-777 (**Suspected** by SE\**confirmed** by PO\**new** as reported by SE, issue yet to be created by PO)
		-Remote IO communication between two M10 handlers.
		-M10 handler XXX in Gekko IDE remote IO status, M10 handler XXX sending state BA but not reciving state NB from M10 handler YYY.
		-M10 handler YYY in Gekko IDE remote IO status, M10 handler YYY sending state NB but not reciving state BA from M10 handler XXX.
		- Steps to re-produse
			- Random selected M10 handlers in cluster put in state STOP by operating panel and returned back to operational mode.		
		- Current behavior and expected behavior.
			- After first reset M10 handler YYY  where expected that it will take the PCB in but this does not happens.
			- After complete shutdown and returning back to operational mode M10 handler YYY where expected that M10 handler YYY will take the PCB in but this does not happens.
			- After M10 handlers XXX and YYY complete shutdown, emptying and returning back to operational mode where expected that cluster will function fine but after hour problem 			          again apears.
			- M10 handler cluster complete shutdown, emptying and returning back to operational mode. M10 handlers cluster functionality is as expected.
	* Attachments: 
		- log files, 
		- pictures.
		- Screenshots
	* Status: OPEN/FIXED (problem resolved, butincident being investigated)/CLOSED (no further action)
	* Comments
	* History

## Incident report example 2
	
	* Time of the problem: now
	* Environment
		- Location: factory XY
		- Equipment:
			- Device1: type, serial number
			- Environment description: (empty)

	* Incident description.
		- (empty, because it is known frequent issue and action to solve it is known and trivial, SE does not need to write anything here)
	* Issue MF-789 (**Known** - means SE is confident this incident relates to the existing issue, PO does not need to do any action on this incident)
		-Conveyor belt broken
		- Action to perform: replace belt, check that it is not too tight

## Incident report example 3 - preventive maintenance (not being done right now)
	
	* Time of the problem: now
	* Environment
		- Location: factory XY
		- Equipment:
			- Device1: type, serial number
			- Environment description: (empty)

	* Incident description.
		- (empty, this is a standard action and does not require any description. If something else special done, can be marked here.)
	* Issue PA-101 (**Planned** - this is not an issue but planned action, corresponds to a list of defined planned actions)
		- Periodical maintenance of the product
		- Actions to perform: X, Y, Z...