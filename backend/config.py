import os
from dotenv import load_dotenv

load_dotenv()

OPENROUTER_API_KEY = os.getenv("OPENROUTER_API_KEY")

COUNCIL_MODELS = [
    "openrouter/free",
]

CHAIRMAN_MODEL = "openrouter/free"

OPENROUTER_API_URL = "https://openrouter.ai/api/v1/chat/completions"

DATA_DIR = "data/conversations"
