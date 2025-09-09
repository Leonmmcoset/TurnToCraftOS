fs = require("fs")
http = require("http")
term = require("term")
colors = require("colors")
textutils = require("textutils")
-- Main
textutils.coloredPrint("You are going to turn your system startup back to CraftOS.")
textutils.coloredPrint("We suggest you backup the files before turn back to CraftOS.")
textutils.coloredPrint(colors.yellow, "Are you sure? (y/n)")
local confirm = term.read()
if confirm ~= "y" then
  print("Installation cancelled.")
  return
end
fs.delete("/startup.lua")
textutils.coloredPrint("Your system startup has been turned back to CraftOS.")
textutils.coloredPrint("Please restart your computer.")
