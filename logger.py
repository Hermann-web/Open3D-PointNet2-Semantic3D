import logging  # Import the logging module for logging
import traceback  # Import the traceback module for working with exceptions

# Example of using the logging module
logging.basicConfig(level=logging.INFO)  # Configure the logger
logger = logging.getLogger(__name__)  # Create a logger instance
logger.info("This is an info message")  # Log an info message

# Example of using the traceback module
try:
    # Code that may raise an exception
    result = 1 / 0  # This will raise a ZeroDivisionError
except Exception as e:
    # Handle the exception and print the traceback
    traceback.print_exc()
