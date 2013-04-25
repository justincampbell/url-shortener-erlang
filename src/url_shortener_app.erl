%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the url_shortener application.

-module(url_shortener_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for url_shortener.
start(_Type, _StartArgs) ->
    url_shortener_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for url_shortener.
stop(_State) ->
    ok.
