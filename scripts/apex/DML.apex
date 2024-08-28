/**
     * Question 1
     * Create a new Account object and inserts it into the database.
     * The Account will have a random name for uniqueness.
     * @return The Id of the newly created Account.
     */
    public static Id insertNewAccount() {
        // Create a new Account instance
    Account acc = new Account();
        // Set some fields on the Account
        acc.Name = 'Full Circle SFDC';
        acc.Website = 'www.fullcirclesfdc.com';
        acc.Phone = '513-290-7946';
        // Insert the Account into the database
        insert acc;
        // Return the Id of the newly created Account
        

        return acc.ID;
    }

    System.debug(insertNewAccount());
