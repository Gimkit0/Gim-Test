local VERSION = 1.05

return {
  CURRENT_VERSION = VERSION,
  ON_NEW_VERSION = function()
    warn("Loaded new version of Remnants administator.")
  end,
}
