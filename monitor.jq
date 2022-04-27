include "utils";

[
  (.timestamp | tztime),
  (.download.bandwidth | bandwidthToMbps),
  (.upload.bandwidth | bandwidthToMbps)
]
  | @tsv
