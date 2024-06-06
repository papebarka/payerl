%% @doc Functions related to user accounts.

-module(account).
-export([info/1, info/2]).


%% @doc Returns the customer account information
%% when his/her account number has been provided

-spec(info(number()) -> tuple()).
info(Account_number) -> Account_number.

-spec(info(atom(), number()) -> number()).
info(individual, Account_number) -> Account_number;
info(corporate, Account_number) -> Account_number.
