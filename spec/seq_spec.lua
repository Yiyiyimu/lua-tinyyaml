local busted = require 'busted'
local assert = require 'luassert'
local yaml = require 'tinyyaml'

busted.describe("seq", function()

  busted.it("nested seq:", function()
    assert.same(
      {
        vars = {{"scheme", "==", "http"}}
      },
      yaml.parse([[
            vars:
            -
              - "scheme"
              - "=="
              - "http"
      ]])
    )
  end)

  busted.it("inline nested seq:", function()
    assert.same(
      {
        vars = {{"scheme", "==", "http"}}
      },
      yaml.parse([[
            vars:
            - - "scheme"
              - "=="
              - "http"
      ]])
    )
  end)
end)
