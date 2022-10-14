# ======================================================================
# BASIC USAGE
# ======================================================================


# ======================================================================
# HOMEBREW
# ======================================================================

eval "$(/opt/homebrew/bin/brew shellenv)"


# ======================================================================
# DEV ENV
# ======================================================================


# ======================================================================
# FSD SERVER LOGIN
# ======================================================================

# Polaris Login
alias pol="ssh -A jstrauss@polaris.fsd.li"
alias polfsd="ssh fsd@polaris.fsd.li"

# Polaris Purge Request
alias purge-perf="cd /projekte/Kunden/MediaMarkt/mdb-cockpit; cap perf purge:run; cd -"
alias purge-production="cd /projekte/Kunden/MediaMarkt/mdb-cockpit; cap production purge:run; cd -"

# Web 03
alias web03="ssh jstrauss@fsd-web03.nmmn.com"

# Nexinto Systeme Login (MediaSaturn)
alias lapp='ssh -o ConnectTimeout=5 fsd@172.26.154.23'
alias lpio='ssh -o ConnectTimeout=5 fsd@172.26.148.47'
alias lweb1='ssh -o ConnectTimeout=5 fsd@172.26.148.28'
alias lweb2='ssh -o ConnectTimeout=5 fsd@172.26.148.29'
alias lweb3='ssh -o ConnectTimeout=5 fsd@172.26.148.30'
alias lweb4='ssh -o ConnectTimeout=5 fsd@172.26.148.31'
alias lweb5='ssh -o ConnectTimeout=5 fsd@172.26.148.32'
alias lweb6='ssh -o ConnectTimeout=5 fsd@172.26.148.33'
alias mmcom='ssh -l fsd -o ConnectTimeout=5 172.26.148.34'
alias perfapp='ssh -o ConnectTimeout=5 fsd@172.26.170.23'
alias perfpio='ssh -o ConnectTimeout=5 fsd@172.26.164.27'
alias perfweb1='ssh -o ConnectTimeout=5 fsd@172.26.164.25'
alias perfweb2='ssh -o ConnectTimeout=5 fsd@172.26.164.26'