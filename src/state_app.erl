%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the state application.

-module(state_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for state.
start(_Type, _StartArgs) ->
    state_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for state.
stop(_State) ->
    ok.
