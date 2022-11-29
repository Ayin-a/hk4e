-- 基础信息
local base_info = {
	group_id = 133103483
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
	{ config_id = 483001, gadget_id = 70330019, pos = { x = 1025.820, y = 269.025, z = 1516.398 }, rot = { x = 0.000, y = 37.987, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 483002, gadget_id = 70330021, pos = { x = 1014.904, y = 274.213, z = 1551.941 }, rot = { x = 0.000, y = 96.791, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 483003, gadget_id = 70211111, pos = { x = 1028.209, y = 269.209, z = 1515.020 }, rot = { x = 0.000, y = 33.630, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 483004, gadget_id = 70330021, pos = { x = 990.519, y = 270.916, z = 1517.926 }, rot = { x = 0.000, y = 250.998, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1483005, name = "GADGET_STATE_CHANGE_483005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_483005", action = "action_EVENT_GADGET_STATE_CHANGE_483005" }
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
		gadgets = { 483001, 483002, 483004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_483005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_483005(context, evt)
	if 483001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_483005(context, evt)
	-- 创建id为483003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 483003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end