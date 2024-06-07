%% @doc Functions related to user accounts.

-module(account).
-export([info/1, transactions_historic/1]).


%% @doc Returns the customer account information
%% when his/her account number has been provided

-spec(info(tuple()) -> fun()).
info({Account_Type, Account_Number}) -> info(Account_Type, Account_Number).

-spec(info(atom(), number()) -> tuple()).
info(individual, Account_number) -> Account_number;
info(corporate, Account_number) -> Account_number.

%% @doc Returns customer's transactions historic

transactions_historic({Account_number, Limit}) when Limit > 0 ->
    io:format("~w~n", [Limit]),
    transactions_historic({Account_number, Limit - 1});

transactions_historic({_Account_number, _Limit}) ->
    io:format("You have reached the historic limit.").