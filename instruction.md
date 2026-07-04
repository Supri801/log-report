There is an Apache-style access log in the working directory. Your task is to parse
`/app/access.log` and produce a JSON summary file at `/app/report.json` containing:

1. `total_requests`: the total number of request lines in the log.
2. `unique_ips`: the number of distinct client IP addresses.
3. `top_path`: the URL path with the most requests.

Success criteria:

1. `/app/report.json` exists and is valid JSON.
2. The file contains the three keys `total_requests`, `unique_ips`, and `top_path` with the correct values for the provided log.
3. The verifier checks the actual JSON content and writes `/logs/verifier/reward.txt` and `/logs/verifier/ctrf.json`.
