import json
from pathlib import Path


def test_report_exists():
    """The agent produced a report file."""
    report_path = Path("/app/report.json")
    assert report_path.exists(), "no report.json found"


def test_report_valid_json():
    """The report file is valid JSON with the expected keys and values."""
    report_path = Path("/app/report.json")
    data = json.loads(report_path.read_text())

    assert isinstance(data, dict), "report.json must contain a JSON object"
    assert data.get("total_requests") == 6, "total_requests must be 6"
    assert data.get("unique_ips") == 3, "unique_ips must be 3"
    assert data.get("top_path") == "/index.html", "top_path must be /index.html"
