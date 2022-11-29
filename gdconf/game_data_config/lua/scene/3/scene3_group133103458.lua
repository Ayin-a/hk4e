-- 基础信息
local base_info = {
	group_id = 133103458
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
	{ config_id = 458001, gadget_id = 70330019, pos = { x = 641.470, y = 207.564, z = 1303.208 }, rot = { x = 0.000, y = 37.987, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 458002, gadget_id = 70330021, pos = { x = 645.387, y = 195.343, z = 1295.354 }, rot = { x = 0.000, y = 250.998, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 458003, gadget_id = 70211111, pos = { x = 638.808, y = 208.158, z = 1304.671 }, rot = { x = 1.108, y = 171.465, z = 359.203 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 458005, gadget_id = 70330021, pos = { x = 611.952, y = 204.301, z = 1283.565 }, rot = { x = 0.000, y = 250.998, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1458004, name = "GADGET_STATE_CHANGE_458004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_458004", action = "action_EVENT_GADGET_STATE_CHANGE_458004" }
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
		gadgets = { 458001, 458002, 458005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_458004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_458004(context, evt)
	if 458001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_458004(context, evt)
	-- 创建id为458003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 458003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end