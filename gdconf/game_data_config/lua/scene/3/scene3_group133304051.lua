-- 基础信息
local base_info = {
	group_id = 133304051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51004, monster_id = 20010801, pos = { x = -1650.709, y = 453.498, z = 2106.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 21 },
	{ config_id = 51005, monster_id = 20010901, pos = { x = -1645.392, y = 453.880, z = 2104.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 21 },
	{ config_id = 51006, monster_id = 20060401, pos = { x = -1648.262, y = 453.037, z = 2103.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 21 },
	{ config_id = 51007, monster_id = 26010101, pos = { x = -1638.850, y = 454.541, z = 2104.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 21 },
	{ config_id = 51008, monster_id = 26090501, pos = { x = -1644.709, y = 453.601, z = 2104.012 }, rot = { x = 0.000, y = 342.271, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 51009, monster_id = 26090501, pos = { x = -1641.821, y = 454.896, z = 2106.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 51001, gadget_id = 70900050, pos = { x = -1641.036, y = 457.353, z = 2113.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 51002, gadget_id = 70900050, pos = { x = -1649.103, y = 455.639, z = 2111.622 }, rot = { x = 0.000, y = 0.000, z = 6.820 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 21 },
	{ config_id = 51003, gadget_id = 70211012, pos = { x = -1644.725, y = 456.558, z = 2112.356 }, rot = { x = 16.176, y = 172.133, z = 350.509 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051011, name = "GADGET_STATE_CHANGE_51011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51011", action = "action_EVENT_GADGET_STATE_CHANGE_51011" },
	{ config_id = 1051012, name = "ANY_MONSTER_DIE_51012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51012", action = "action_EVENT_ANY_MONSTER_DIE_51012" },
	{ config_id = 1051013, name = "GADGET_STATE_CHANGE_51013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51013", action = "action_EVENT_GADGET_STATE_CHANGE_51013" },
	{ config_id = 1051014, name = "ANY_MONSTER_DIE_51014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51014", action = "action_EVENT_ANY_MONSTER_DIE_51014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 51010, monster_id = 25310201, pos = { x = -1641.115, y = 453.056, z = 2101.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 }
	}
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
		gadgets = { 51001, 51002, 51003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_51011", "GADGET_STATE_CHANGE_51013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51004, 51005, 51006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 51007, 51008, 51009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304051, 51001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304051, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51012(context, evt)
	-- 将configid为 51002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_51013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304051, 51002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_51013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304051, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51014(context, evt)
	-- 将configid为 51003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end