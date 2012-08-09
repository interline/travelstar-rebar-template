-module({{appid}}).
-behaviour(application).
-behaviour(supervisor).

-export([start/0, stop/0]).
-export([start/2, stop/1]).
-export([init/1]).

start() ->
    ok = lager:start(),
    application:start(?MODULE).

stop()  ->
    application:stop(?MODULE).

start(_Type, _Args) ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

stop(_State) ->
    ok.

init([]) ->
    Server = { {{appid}}_server, { {{appid}}_server, start_link, []},
              permanent, 1000, worker, [{{appid}}_server]},
    {ok, { {one_for_one, 10, 10}, [Server]}}.
