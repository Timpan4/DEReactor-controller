-- drmon installation script
--
--

local libURL = "https://raw.githubusercontent.com/Timpan4/DEReactor-controller/master/lib/f.lua"
local startupURL = "https://raw.githubusercontent.com/Timpan4/DEReactor-controller/master/drmon.lua"
local betaURL = "https://raw.githubusercontent.com/Timpan4/DEReactor-controller/master/test.lua"
local installURL = "https://raw.githubusercontent.com/Timpan4/DEReactor-controller/master/install.lua"
local lib, startup, test, install
local libFile, startupFile, testFile, installFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()
print("lib file downloaded")

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()
print("startup file downloaded")

test = http.get(betaURL)
testFile = test.readAll()

local file3 = fs.open("beta", "w")
file3.write(testFile)
file3.close()
print("beta file downloaded")

install = http.get(installURL)
installFile = install.readAll()

local file4 = fs.open("install", "w")
file4.write(installFile)
file4.close()
print("install file downloaded")

print("files downloaded")
