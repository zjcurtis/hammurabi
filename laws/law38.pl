% 38. A chieftain, man, or one subject to quit-rent can not assign his tenure of field, house, and garden to his wife or daughter, nor can he assign it for a debt.

cannot_transfer(Person, Property, Recipient) :-
    person_type(Person, [chieftain, freeman, tenant]),
    property_type(Property, tenure),
    property_category(Property, [field, house, garden]),
    (recipient_type(Recipient, [wife, daughter]);
    transfer_purpose(Recipient, debt)).