%% Some standard definitions that are common across several modules.

-ifdef(DEBUG).
-define(DEBUG_LOG(Msg, Args), error_logger:error_msg(Msg, Args)).
-else.
-define(DEBUG_LOG(_Msg, _Args), void).
-endif.

%% Defaults for the controller.
-define(CONTROLLER_NAME, medici).

%% Defaults for the tyrant port server
-define(PORT_SRV_NAME, medici_srv).
-define(PORT_OPTS, [binary, use_stdio, stream, {line, 256}, hide]).
-define(TYRANT_BIN, "/opt/local/bin/ttserver").
-define(TYRANT_OPTS, []).
-define(DATA_FILE, "\"*\""). % default to in-memory hash (quote the *...)
-define(TUNING_OPTS, []).
-define(LOG_REGEXP, "\\S+\\t(\\S+)").
-define(PID_REGEXP, "service started: (\\d+)").

-define(AUTO_SYNC, true).
-define(AUTO_TUNE, false).
-define(DEFAULT_TASK_PERIOD, 5000).
