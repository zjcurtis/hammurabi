:- use_module(real_estate_helpers)

% 39. He may, however, assign a field, garden, or house which he has bought, and holds as property, to his wife or daughter or give it for debt.

can_transfer(Person, Property, Recipient) :-
    chieftan_man_or_subject_to_quit_rent(Person),
    property_type(Property, purchased),
    property_category(Property, [field, house, garden]),    
    (recipient_type(Recipient, [wife, daughter]);
    transfer_purpose(Recipient, debt)),
    owns(Person, Property).