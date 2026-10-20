
from flask import Flask, jsonify
import logging
import os

app = Flask(__name__)

logging.basicConfig(
    level=os.getenv("LOG_LEVEL", "INFO"),
    format="%(asctime)s %(levelname)s %(name)s %(message)s",
)

logger = logging.getLogger(__name__)


@app.get("/health")
def health_check():
    """Return a simple health status."""
    return jsonify({"status": "healthy"}), 200


@app.get("/")
def home():
    """Describe the API."""
    return jsonify({
        "name": "AWS Cloud Infrastructure Security Lab API",
        "version": "1.0.0",
        "endpoints": ["/", "/health"],
    }), 200


@app.errorhandler(404)
def not_found(error):
    """Return a consistent JSON response for unknown routes."""
    return jsonify({"error": "Not found"}), 404


@app.errorhandler(500)
def internal_error(error):
    """Log unexpected server errors and return a generic response."""
    logger.exception("Unexpected internal server error")
    return jsonify({"error": "Internal server error"}), 500


if __name__ == "__main__":
    # Local development only. Use a production WSGI server for deployment.
    app.run(host="127.0.0.1", port=5000, debug=False)
