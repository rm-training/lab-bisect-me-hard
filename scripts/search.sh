for rev in $(git rev-list $1..$2 --merges --first-parent);
do
  git rev-list $rev^2 --not $rev^
done | xargs git bisect skip