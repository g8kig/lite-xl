-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "C",
  files = { "%.c$", "%.h$", "%.inl$" },
  comment = "//",
  patterns = {
    { pattern = "//.-\n",                type = "comment" },
    { pattern = { "/%*", "%*/" },        type = "comment" },
    { pattern = { '"', '"', '\\' },      type = "string"  },
    { pattern = { "'", "'", '\\' },      type = "string"  },
    { pattern = "0x%x+",                 type = "number"  },
    { pattern = "%d+[%d%.eE]*f?",        type = "number"  },
    { pattern = "%.?%d+f?",              type = "number"  },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",  type = "operator" },
    { pattern = "struct%s()[%a_][%w_]*", type = {"keyword", "keyword2"} },
    { pattern = "union%s()[%a_][%w_]*",  type = {"keyword", "keyword2"} },
    { pattern = "[%a_][%w_]*%f[(]",      type = "function" },
    { pattern = "[%a_][%w_]*",           type = "symbol" },
    { pattern = "#include%s()<.->",      type = {"keyword", "string"} },
    { pattern = "#[%a_][%w_]*",          type = "keyword" },
  },
  symbols = {
    ["if"]       = "keyword",
    ["then"]     = "keyword",
    ["else"]     = "keyword",
    ["elseif"]   = "keyword",
    ["do"]       = "keyword",
    ["while"]    = "keyword",
    ["for"]      = "keyword",
    ["break"]    = "keyword",
    ["continue"] = "keyword",
    ["return"]   = "keyword",
    ["goto"]     = "keyword",
    ["typedef"]  = "keyword",
    ["enum"]     = "keyword",
    ["extern"]   = "keyword",
    ["static"]   = "keyword",
    ["volatile"] = "keyword",
    ["const"]    = "keyword",
    ["inline"]   = "keyword",
    ["switch"]   = "keyword",
    ["case"]     = "keyword",
    ["default"]  = "keyword",
    ["auto"]     = "keyword",
    ["void"]     = "keyword",
    ["int"]      = "keyword2",
    ["short"]    = "keyword2",
    ["long"]     = "keyword2",
    ["float"]    = "keyword2",
    ["double"]   = "keyword2",
    ["char"]     = "keyword2",
    ["unsigned"] = "keyword2",
    ["bool"]     = "keyword2",
    ["true"]     = "literal",
    ["false"]    = "literal",
    ["NULL"]     = "literal",
    ["#include"] = "keyword",
    ["#if"] = "keyword",
    ["#ifdef"] = "keyword",
    ["#ifndef"] = "keyword",
    ["#else"] = "keyword",
    ["#elseif"] = "keyword",
    ["#endif"] = "keyword",
    ["#define"] = "keyword",
    ["#warning"] = "keyword",
    ["#error"] = "keyword",
    ["#pragma"] = "keyword",
  },
}

