fields description
fieldsDesc
	^#(
	unsigned int version;

	"Combination of git_diff_find_t values (default GIT_DIFF_FIND_BY_CONFIG).
	 NOTE: if you don't explicitly set this, `diff.renames` could be set
	 to false, resulting in `git_diff_find_similar` doing nothing."
	NBUInt32 flags;

	" Similarity to consider a file renamed (default 50) "
	NBUInt16 rename_threshold;
	" Similarity of modified to be eligible rename source (default 50) "
	NBUInt16 rename_from_rewrite_threshold;
	" Similarity to consider a file a copy (default 50) "
	NBUInt16 copy_threshold;
	" Similarity to split modify into delete/add pair (default 60) "
	NBUInt16 break_rewrite_threshold;

	"Maximum similarity sources to examine for a file (somewhat like
	 git-diff's `-l` option or `diff.renameLimit` config) (default 200)"
	NBUInt32 rename_limit;

	" Pluggable similarity metric; pass NULL to use internal metric "
	LGitDiffSimilarityMetric metric;
	)