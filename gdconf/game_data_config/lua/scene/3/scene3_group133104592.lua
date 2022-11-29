-- 基础信息
local base_info = {
	group_id = 133104592
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
	{ config_id = 592001, gadget_id = 70330021, pos = { x = 813.601, y = 253.828, z = 957.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 592002, gadget_id = 70330019, pos = { x = 827.738, y = 247.485, z = 970.140 }, rot = { x = 359.222, y = 32.224, z = 25.214 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 592003, gadget_id = 70330021, pos = { x = 781.528, y = 254.603, z = 986.633 }, rot = { x = 10.575, y = 0.496, z = 5.356 }, level = 19, area_id = 6 },
	{ config_id = 592004, gadget_id = 70330021, pos = { x = 779.018, y = 254.136, z = 963.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 592005, gadget_id = 70330021, pos = { x = 756.456, y = 261.517, z = 941.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 592006, gadget_id = 70330019, pos = { x = 824.388, y = 247.742, z = 979.949 }, rot = { x = 356.491, y = 20.841, z = 1.003 }, level = 19, state = GadgetState.GearStart, persistent = true, area_id = 6 },
	{ config_id = 592007, gadget_id = 70330021, pos = { x = 825.150, y = 247.802, z = 984.124 }, rot = { x = 1.459, y = 349.480, z = 343.790 }, level = 24, area_id = 6 },
	{ config_id = 592008, gadget_id = 70330021, pos = { x = 833.170, y = 246.443, z = 961.113 }, rot = { x = 23.920, y = 356.286, z = 334.072 }, level = 24, area_id = 6 },
	{ config_id = 592010, gadget_id = 70211101, pos = { x = 826.298, y = 247.878, z = 975.505 }, rot = { x = 19.077, y = 72.631, z = 0.349 }, level = 21, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 592011, gadget_id = 70330021, pos = { x = 790.847, y = 256.546, z = 996.108 }, rot = { x = 344.572, y = 353.746, z = 355.602 }, level = 19, area_id = 6 },
	{ config_id = 592012, gadget_id = 70211101, pos = { x = 756.416, y = 261.517, z = 939.402 }, rot = { x = 0.000, y = 79.793, z = 0.000 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1592009, name = "GADGET_STATE_CHANGE_592009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_592009", action = "action_EVENT_GADGET_STATE_CHANGE_592009" }
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
		gadgets = { 592001, 592002, 592003, 592004, 592005, 592006, 592007, 592008, 592011, 592012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_592009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_592009(context, evt)
	if 592002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_592009(context, evt)
	-- 创建id为592010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 592010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end