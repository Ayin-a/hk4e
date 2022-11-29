-- 基础信息
local base_info = {
	group_id = 133008155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155001, gadget_id = 70211147, pos = { x = 985.940, y = 403.215, z = -1027.438 }, rot = { x = 0.000, y = 78.864, z = 0.000 }, level = 26, drop_tag = "雪山玉髓超级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 155003, gadget_id = 70211121, pos = { x = 981.289, y = 402.546, z = -1022.740 }, rot = { x = 355.614, y = 171.230, z = 359.452 }, level = 26, drop_tag = "雪山解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 155004, gadget_id = 70211111, pos = { x = 994.154, y = 402.959, z = -1031.512 }, rot = { x = 327.531, y = 349.914, z = 3.767 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155002, name = "GADGET_STATE_CHANGE_155002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_155002", action = "action_EVENT_GADGET_STATE_CHANGE_155002" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 155001, 155003, 155004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_155002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_155002(context, evt)
	if 155001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_155002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6009, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end