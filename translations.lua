---@meta

---@alias textdomain string

---@alias Translator fun(str: string, ...: string|number): string
---@alias PluralTranslator fun(str: string, str_plural: string, n: integer, ...: string|number): string

---Returns `S`/`PS` bound to `textdomain`, so `S(str, ...)` is
---`core.translate(textdomain, str, ...)` and `PS(...)` is `core.translate_n(textdomain, ...)`.
---If `textdomain` is nil, `""` is used instead.
---@nodiscard
---@param textdomain? textdomain
---@return Translator S
---@return PluralTranslator PS
function core.get_translator(textdomain) end

---Translates `str` for `textdomain`; `...` fills the string's `@1`, `@2`, ... placeholders.
---Note: number is an alternative type for the varargs because numbers
--- get converted to strings in the process, regardless.
---@nodiscard
---@param textdomain textdomain
---@param str string
---@param ... string|number
---@return string
function core.translate(textdomain, str, ...) end

---Translates `str` (singular) or `str_plural` (plural) for `textdomain`,
---choosing the form based on `n` per the locale's plural rules.
---Only .po/.mo files support plurals; .tr files do not.
---Note: number is an alternative type for the varargs because numbers
--- get converted to strings in the process, regardless.
---@nodiscard
---@param textdomain textdomain
---@param str string
---@param str_plural string
---@param n integer
---@param ... string|number
---@return string
function core.translate_n(textdomain, str, str_plural, n, ...) end

---Server side translation utility. Resolves translation markup on the server
---for the given `lang_code`, using the corresponding translation files.
---Useful for sorting/filtering translated strings;
---not so much for client display.
---@nodiscard
---@param lang_code string
---@param string string
---@return string
function core.get_translated_string(lang_code, string) end
