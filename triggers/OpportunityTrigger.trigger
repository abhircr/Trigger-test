trigger OpportunityTrigger on Opportunity (after insert) {
    OpportunityTriggerHandler.createOpportunityTeamFromAccountTeam(Trigger.new);
   }