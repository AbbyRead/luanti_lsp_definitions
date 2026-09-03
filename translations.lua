---@meta

---@alias textdomain string

---@alias Translator fun(str: string, ...: string): string
---@alias PluralTranslator fun(
---    str: string,
---    str_plural: string,
---    n: integer,
---    ...: string
---): string

---Returns `S`/`PS` bound to `textdomain`, so `S(str, ...)` is
---`core.translate(textdomain, str, ...)` and `PS(...)` is `core.translate_n(textdomain, ...)`.
---If `textdomain` is nil, `""` is used instead.
---@nodiscard
---@param textdomain? textdomain
---@return Translator S
---@return PluralTranslator PS
function core.get_translator(textdomain) end

---Translates `str` for `textdomain`; `...` fills the string's `@1`, `@2`, ... placeholders.
---@nodiscard
---@param textdomain textdomain
---@param str string
---@param ... string
---@return string
function core.translate(textdomain, str, ...) end

---Translates `str` (singular) or `str_plural` (plural) for `textdomain`,
---choosing the form based on `n` per the locale's plural rules.
---Only .po/.mo files support plurals; .tr files do not.
---@nodiscard
---@param textdomain textdomain
---@param str string
---@param str_plural string
---@param n integer
---@param ... string
---@return string
function core.translate_n(textdomain, str, str_plural, n, ...) end
