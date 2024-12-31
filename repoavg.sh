#!/bin/bash

usage="usage: ./repoavg.sh [<github_repo_url> || .] <author> <since_days_ago>"
example="example: ./repoavg.sh . Mitchell 30"
example_remote="example remote: ./repoavg.sh git@github.com:ghostty-org/ghostty.git Mitchell 30"

if [ "$1" == "-h" ] || [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
	echo $usage
	echo $example
	echo $example_remote
	exit 1
fi

repo_url="$1"
author="$2"
days_since="$3"

if [ $repo_url == "." ]; then
	repo_dir=".git"
else
	repo_dir="${repo_url##*/}"

	if [ ! -d "$repo_dir" ]; then
		git clone --bare $repo_url
		echo ""
	fi
fi

lines_raw=$(git --git-dir=$repo_dir log --author="$author" --since="$days_since days ago" --pretty=tformat: --numstat | awk '{added+=$1; deleted+=$2} END {print added, deleted}')

commits_count=$(git --git-dir=$repo_dir log --author="$author" --since="$days_since days ago" --oneline | wc -l | awk '{$1=$1;print}')
lines_added=$(echo "$lines_raw" | awk '{print $1}')
lines_deleted=$(echo "$lines_raw" | awk '{print $2}')
top_authors=$(git --git-dir=$repo_dir log --pretty=format:"%aN" | sort | uniq -c | sort -nr | head -n 10 | awk '{$1=""; print substr($0,2)}' | paste -sd, -)

commits_count_avg=$((commits_count / $days_since))
lines_added_avg=$((lines_added / $days_since))
lines_deleted_avg=$((lines_deleted / $days_since))

echo "- commits: $commits_count (avg per day: $commits_count_avg)"
echo "- lines added: $lines_added (avg per day: $lines_added_avg)"
echo "- lines deleted: $lines_deleted (avg per day: $lines_deleted_avg)"
echo "- top authors: $top_authors"

if [ ! $repo_url == "." ]; then
	echo "\"rm -rf $repo_dir\" - run it when you done."
fi
