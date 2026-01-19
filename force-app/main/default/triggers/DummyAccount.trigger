trigger DummyAccount on Account (after insert) {
    List<Contact > contactList = new List < COntact > ();
    for (Account acc  : Trigger.new)
    {
        newCon.
    }
    insert contactList ; 
}   