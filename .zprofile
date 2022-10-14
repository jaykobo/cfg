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




# #############################################################################################################
# FSD PROJECT SPECIFIC
# #############################################################################################################

# ======================================================================
# MSH OVERALL
# ======================================================================

# Grunt: MMFL
alias grunt-mmfl-desktop="cd /Users/jstrauss/_dev/media-saturn/mmde/mmfl/desktop/_SOURCES; grunt; cd -"
alias grunt-mmfl-mobile="cd /Users/jstrauss/_dev/media-saturn/mmde/mmfl/mobile/_SOURCES; grunt; cd -"


# Grunt: Campaign Skin
alias grunt-screen-desktop="cd /Users/jstrauss/_dev/media-saturn/mmde/neues-cd/campaign_skin_mmde/grunt; grunt; cd -"
alias grunt-screen-mobile="cd /Users/jstrauss/_dev/media-saturn/mmde/neues-cd/campaign_skin_mmde-mobile/grunt; grunt; cd -"


# StoreExternalContent scp transfer:
alias sec-mmde="scp -i ~/.ssh/id_rsa.fsd_deployment.priv -r fsd@172.26.154.23:/www/mediamarkt/htdocs/backend/live/projects/store-external-content/shared/data/new-deliverd-files/* /Users/jstrauss/_Development/Projects/media_markt/store-external-content/public/"
alias sec-mmat="scp -i ~/.ssh/id_rsa.fsd_deployment.priv -r fsd@172.26.154.23:/www/mediamarkt/at/htdocs/backend/live/projects/store-external-content/shared/data/new-deliverd-files/* /Users/jstrauss/_Development/Projects/mmat/store-external-content/public/"
alias sec-seat="scp -i ~/.ssh/id_rsa.fsd_deployment.priv -r fsd@172.26.154.23:/www/saturn/at/htdocs/backend/live/projects/store-external-content/shared/data/new-deliverd-files/* /Users/jstrauss/_Development/Projects/seat/store-external-content/public/"




# ======================================================================
# DATASTORE
# ======================================================================

# datastore.test start localhost server
# Exp.: type "datastore up" to start docker
function datastore() {
    ( cd ~/_dev/datastore/datastore-wordpress/docker/ && docker-compose $* )
}

# CD shortcut
alias cdds='cd ~/_dev/datastore/datastore-wordpress/'
alias cdds-ass='cd ~/_dev/datastore/datastore-wordpress/web/app/themes/astra-child/assets'

# Bash into Docker
alias ds-dockerbash='docker exec -ti datastore_workspace bash'

# Import db dumps
alias ds-import_db='cdds && sh bin/import_db.sh live'
alias ds-import_media='cdds && sh bin/sync_media.sh live'

# Compile Theme Assets
alias dsgulp='cdds-ass && gulp'




# ======================================================================
# MM.COM
# ======================================================================

# Start Localhost
alias start-mmcom="cd /Users/jstrauss/_dev/media-saturn/mm-com/assets/; php -S localhost:9000"

# Upload local dev to werft-mmcom-dev
# alias upl-mmcom-dev="scp -r ~/_Development/Projects/mm-com/assets/* 217.114.66.12:/var/www/werft.for-sale-digital.de/data/mm.com-dev"



# #############################################################################################################
# Jakob Strauss: PRIVATE / SITES
# #############################################################################################################

# ======================================================================
# MUZYMA
# ======================================================================

# muzyma.test start localhost server
# Exp.: type "muzyma up" to start webserver
function muzyma() {
    ( cd ~/Private/sites/muzyma/muzyma.de/trellis && vagrant $* )
}

# CD shortcut
alias cdmu-site='cd ~/Private/sites/muzyma/muzyma.de/site/'
alias cdmu-trel='cd ~/Private/sites/muzyma/muzyma.de/trellis/'