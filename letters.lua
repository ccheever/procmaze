-- local classic = require "https://raw.githubusercontent.com/rxi/classic/master/classic.lua"
local classic = require "./classic"

local Object = classic

local Letter = Object:extend()

function Letter:new(...)
  local squares = {...}
  local height = 2
  local width = #squares / 2
  local cm = {}
  local n = 1
  for j = 1, height do
    for i = 1, width do
      if not cm[i] then
        cm[i] = {}
      end
      local t = {}
      t.top = not (not squares[n].top)
      t.bottom = not (not squares[n].bottom)
      t.left = not (not squares[n].left)
      t.right = not (not squares[n].right)
      cm[i][j] = t
      n = n + 1
    end
  end
  self.height = height
  self.width = width
  self.cm = cm
end

letters = {
  A = Letter(
    {
      top = true,
      left = true,
      right = true,
      bottom = true
    },
    {
      top = true,
      left = true,
      right = true
    }
  ),
  B = Letter(
    {
      top = true,
      left = true,
      right = true,
      bottom = true
    },
    {
      top = true,
      left = true,
      right = true,
      bottom = true
    }
  ),
  C = Letter({top = true, left = true}, {left = true, buttom = true}),
  D = Letter(
    {
      left = true,
      top = true,
      right = true
    },
    {left = true, bottom = true, right = true}
  ),
  E = Letter({top = true, left = true, bottom = true}, {top = true, left = true, bottom = true}),
  F = Letter(
    {
      top = true,
      left = true,
      bottom = true,
      left = true,
      top = true
    }
  ),
  G = Letter(
    {
      top = true,
      left = true
    },
    {
      left = true,
      bottom = true,
      right = true
    }
  ),
  H = Letter({left = true, bottom = true, right = true}, {left = true, top = true, right = true}),
  I = Letter({left = true}, {left = true}),
  J = Letter({right = true}, {left = true, bottom = true, right = true}),
  K = Letter({left = true, bottom = true, right = true}, {left = true, top = true, right = true}),
  L = Letter({left = true}, {left = true, bottom = true}),
  M = Letter(
    {left = true, top = true, right = true},
    {left = true},
    {left = true, top = true, right = true},
    {right = true}
  ),
  N = Letter({left = true, top = true, right = true}, {left = true, right = true}),
  O = Letter({left = true, top = true, right = true}, {left = true, bottom = true, right = true}),
  P = Letter({left = true, top = true, right = true, bottom = true}, {left = true, top = true}),
  Q = Letter(
    {left = true, top = true, right = true},
    {left = true, bottom = true, right = true},
    {left = true},
    {left = true, bottom = true}
  ),
  R = Letter({left = true, top = true, right = true, bottom = true}, {left = true, top = true, right = true}),
  S = Letter({left = true, top = true, bottom = true}, {top = true, right = true, bottom = true}),
  T = Letter({top = true, right = true}, {right = true}, {top = true, left = true}, {left = true}),
  U = Letter({left = true, right = true}, {left = true, bottom = true, right = true}),
  V = Letter({left = true, right = true}, {left = true, bottom = true, right = true}),
  W = Letter(
    {left = true},
    {left = true, bottom = true, right = true},
    {right = true},
    {left = true, bottom = true, right = true}
  ),
  X = Letter({left = true, bottom = true, right = true}, {left = true, top = true, right = true}),
  Y = Letter({left = true, bottom = true, right = true}, {top = true, right = true, bottom = true}),
  Z = Letter({top = true, right = true, bottom = true}, {top = true, left = true, bottom = true})
}

return letters
