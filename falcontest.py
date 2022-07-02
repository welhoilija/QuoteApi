import json, falcon
from utils.quote_engine import get_random_quote

class QuoteResource:

    def on_get(self, req, resp):
        """Handles GET requests"""
        quote = get_random_quote()

        resp.media = quote


app = falcon.App()
app.add_route('/quote', QuoteResource())
