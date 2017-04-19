import os

import SimpleHTTPServer
import SocketServer

PORT = int(os.getenv("PORT", "8000"))

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

httpd = SocketServer.TCPServer(("0.0.0.0", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()
