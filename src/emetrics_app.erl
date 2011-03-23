%%%-------------------------------------------------------------------
%%% File:      emetrics_app.erl
%%% @author    joe williams <j@fastip.com>
%%% @copyright 2011 fast_ip
%%% @doc
%%% @end
%%%------------------------------------------------------------------

-module(emetrics_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    emetrics_sup:start_link().

stop(_State) ->
    ok.