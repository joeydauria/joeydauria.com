require "rack/directory"
require "rack/rewrite"

use Rack::Rewrite do
  rewrite "/", "index.html"
end
run Rack::Directory.new("public")

