---@overload fun(label: string, callback: (fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void)): true
---@overload fun(label: string, callback: (fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void), keepOpen: boolean): true
---@param label string @Text for the menu item.
---@param callback fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void
---@param keepOpen boolean @Whether the context menu should remain open after the item is selected. Defaults to false.
---@param requireTable boolean @Whether the menu item is only included if the table is being hovered over. Defaults to false.
---@return true @Technically, returns false if your `callback` param is nil. However, Luanalysis won't allow you to make that mistake.
function addContextMenuItem(label, callback, keepOpen, requireTable) end

---@return true
function clearContextMenu() end

---Flip the table.
---@return boolean
function flipTable() end

---Returns an array of the Player Colors strings of seated players.
---@return tts__PlayerColor[]
function getSeatedPlayers() end

---Enables/disables looking for group. This is visible in the server browsers, indicating if you are recruiting for a game.
---@param lfp boolean @Whether or not you are looking for players.
---@return boolean
function setLookingForPlayers(lfp) end

---Start a coroutine. A coroutine is similar to a function, but has the unique ability to have its run paused until the
---next frame of the game using `coroutine.yield(0)`.
---
---**You MUST return a 1 at the end of any coroutine or it will throw an error.**
---@param functionOwner tts__Object @The Object that the function being called is on. Global is a valid target.
---@param functionName string @Name of the function being called as a coroutine.
---@return boolean
function startLuaCoroutine(functionOwner, functionName) end

---@param player_color string
---@return { r: string, g: string, b: string }
function stringColorToRGB(player_color) end

---@overload fun(label: string, callback: fun(playerColor: tts__PlayerColor, object: tts__Object, pointerPosition: nil | tts__Vector, isKeyUp: boolean): void): true
---@param label string
---@param callback fun(playerColor: tts__PlayerColor, object: tts__Object, pointerPosition: nil | tts__Vector, isKeyUp: boolean): void
---@param triggerOnKeyUp boolean @Defaults to false
---@return true
function addHotkey(label, callback, triggerOnKeyUp) end

---Clears all hotkeys previously added via `addHotkey(...)`.
---@return boolean
---@see _G#addHotkey
function clearHotkeys() end

---Shows the hotkey configuration window under Options->Game Keys.
---@return boolean
function showHotkeyConfig() end

---@overload fun(message: string): boolean
---@param message string
---@param color string
---@return boolean
function broadcastToAll(message, color) end

---@overload fun(message: string, playerColor: string): boolean
---@param message string
---@param playerColor string
---@param messageColor string
---@return boolean
function broadcastToColor(message, playerColor, messageColor) end

---@overload fun(value: any): string
---@overload fun(value: any, label: string): string
---@param value any
---@param label string
---@param tags string
---@return string
function log(value, label, tags) end

---@overload fun(value: any): string
---@overload fun(value: any, label: string): string
---@overload fun(value: any, label: string, tag: string): string
---@overload fun(value: any, label: string, tag: string, concise: boolean): string
---@param value any
---@param label string
---@param tag string
---@param concise boolean @Default false
---@param displayTag boolean @Default false
---@return string
function logString(value, label, tag, concise, displayTag) end

---Configures style options for a `log(...)` tag.
---@param tag string @A String of the log's tag.
---@param color string | tts__ColorShape @RGB value to tint the log entry's text. *(String color will also work. Example: `"Red"`)*
---@param prefix nil | string @Text to place before this type of log entry. Defaults to an empty String. *(Empty Strings are not displayed*)
---@param postfix nil | string @Text to place after this type of log entry. Defaults to an empty String. *(Empty Strings are not displayed*)
---@return boolean
---@see _G#log
function logStyle(tag, color, prefix, postfix) end

---@overload fun(message: string): boolean
---@param message string
---@param color tts__ColorShape
---@return boolean
function printToAll(message, color) end

---@overload fun(message: string, playerColor: string): boolean
---@param message string
---@param playerColor string
---@param messageColor string
---@return boolean
function printToColor(message, playerColor, messageColor) end

---Send a table to your external script editor, most likely Atom. *This is for custom editor functionality.*
---@param data table
---@return boolean
function sendExternalMessage(data) end
