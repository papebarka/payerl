%% @doc Functions related to user accounts.

-module(account).
-export([info/1]).


%% @doc Returns the customer account information
%% when his/her account number has been provided

-spec(info(tuple()) -> fun()).
info({Account_Type, Account_Number}) -> info(Account_Type, Account_Number).

-spec(info(atom(), number()) -> tuple()).
info(individual, Account_number) -> Account_number;
info(corporate, Account_number) -> Account_number.
