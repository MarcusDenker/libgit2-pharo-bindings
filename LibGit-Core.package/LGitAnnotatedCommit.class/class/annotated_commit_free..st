libgit-calls
annotated_commit_free: handle
	^ self
		ffiCallSafely: #(void git_annotated_commit_free #(void *handle))
		options: #()