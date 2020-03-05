###############################################################################
#
#   [TITLE, DESCRIPTION]
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: GPL_v3.0
#   USAGE: ...
#
###############################################################################

# by default: suppress warnings
options(warn=-1)

# load libraries
suppressPackageStartupMessages(library("optparse"))

# list the command-line arguments
option_list = list(
    make_option(c("--message"),
        action="store",
        dest="message",
        type="character",
        default="Hello, world!",
        help="Message to be printed on standard output."),
    make_option(c("--help"),
        action="store_true",
        dest="help",
        type="logical",
        default=FALSE,
        help="Show this information and exit."),
    make_option(c("--verbose"),
        action="store_true",
        dest="verbose",
        type="logical",
        default=FALSE,
        help="Run in verbose mode.")
)

# parse command-line arguments
opt_parser = OptionParser(
    usage="Usage: %prog [OPTIONS] --message [STRING]",
    option_list=option_list,
    add_help_option=FALSE,
    description="")
opt = parse_args(opt_parser)

# if verbose flag was set: print warnings
if (opt$verbose){
    options(warn=0)
}

###############################################################################
# MAIN
###############################################################################

print(opt$message)

