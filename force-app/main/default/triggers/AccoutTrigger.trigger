trigger AccoutTrigger on Account (after insert) {
  AccountHandler.createContact(trigger.new);
}