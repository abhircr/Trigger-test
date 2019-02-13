trigger AccountTeamMember on Account (after insert) {
    List<OpportunityTeamMember> ListOfOppty=new List<OpportunityTeamMember>();
    for(Account accounts:trigger.new){
        OpportunityTeamMember Oppty=new OpportunityTeamMember(); 
        Oppty.TeamMemberRole=accounts.id;
        Oppty.id=accounts.id;
        system.debug('ooty-->'+Oppty);
        ListOfOppty.add(oppty);
    }
    insert ListOfOppty;
}