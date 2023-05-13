curl -s https://catalog.archives.gov/proxy/contributions/targetNaId/$1 | jq '. | sort_by(.id) | map(.contribution)' | sed 's/\\n\\n/\n/g' | tr -d '"'
