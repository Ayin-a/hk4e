-- 基础信息
local base_info = {
	group_id = 199001177
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
	{ config_id = 177001, gadget_id = 70211101, pos = { x = 230.932, y = 133.128, z = 304.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 177002, gadget_id = 70380002, pos = { x = 250.131, y = 123.335, z = 292.106 }, rot = { x = 0.000, y = 84.143, z = 0.000 }, level = 20, isOneoff = true, route_id = 900100034, persistent = true, area_id = 402 },
	{ config_id = 177003, gadget_id = 70380002, pos = { x = 233.618, y = 136.061, z = 298.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, isOneoff = true, route_id = 900100035, persistent = true, area_id = 402 },
	{ config_id = 177004, gadget_id = 70380002, pos = { x = 253.091, y = 139.756, z = 309.242 }, rot = { x = 335.375, y = 321.592, z = 0.000 }, level = 20, isOneoff = true, route_id = 900100036, persistent = true, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1177005, name = "ANY_GADGET_DIE_177005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_177005", action = "action_EVENT_ANY_GADGET_DIE_177005" },
	{ config_id = 1177006, name = "GADGET_STATE_CHANGE_177006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_177006", action = "action_EVENT_GADGET_STATE_CHANGE_177006", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 177002, 177003, 177004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_177005", "GADGET_STATE_CHANGE_177006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_177005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 199001177}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_177005(context, evt)
	-- 创建id为177001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 177001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_177006(context, evt)
	if 177001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_177006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001177, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end