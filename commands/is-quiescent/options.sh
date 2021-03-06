# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Wed Dec  9 11:19:07 PST 2015
#
#/ usage: rundeck-system:is-quiescent  --thresholds <>  --profile <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --thresholds) rerun_option_check $# $1; THRESHOLDS=$2 ; shift ;;
            --profile) rerun_option_check $# $1; PROFILE=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.

    # Check required options are set
    [ -z "$THRESHOLDS" ] && { echo >&2 "missing required option: --thresholds" ; return 2 ; }
    [ -z "$PROFILE" ] && { echo >&2 "missing required option: --profile" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export THRESHOLDS
    export PROFILE
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${THRESHOLDS:=}
: ${PROFILE:=}


