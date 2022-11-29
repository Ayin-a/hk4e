mlc = require 'metalua.compiler'.new()
pp = require 'metalua.pprint'

function parseAST(lua_content_str, group_id)
    ast = mlc :src_to_ast(lua_content_str)
    return ast
end