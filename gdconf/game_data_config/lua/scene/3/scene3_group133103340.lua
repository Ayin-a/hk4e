-- 基础信息
local base_info = {
	group_id = 133103340
}

-- DEFS_MISCS
local defs = {
    group_id = 133103340,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 340001, monster_id = 21011201, pos = { x = 702.712, y = 318.771, z = 1761.545 }, rot = { x = 0.000, y = 100.177, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, area_id = 6 },
	{ config_id = 340002, monster_id = 21011201, pos = { x = 705.184, y = 319.630, z = 1765.149 }, rot = { x = 0.000, y = 121.835, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, affix = { 4145 }, isOneoff = true, area_id = 6 },
	{ config_id = 340003, monster_id = 21020301, pos = { x = 692.401, y = 317.821, z = 1761.137 }, rot = { x = 0.000, y = 215.118, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 },
	{ config_id = 340026, monster_id = 21020201, pos = { x = 689.615, y = 317.287, z = 1762.049 }, rot = { x = 0.000, y = 169.088, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, affix = { 4145 }, isOneoff = true, pose_id = 401, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 340005, gadget_id = 70350201, pos = { x = 681.670, y = 317.229, z = 1778.876 }, rot = { x = 0.000, y = 0.000, z = 11.625 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	-- 宝箱
	{ config_id = 340007, gadget_id = 70210114, pos = { x = 694.100, y = 319.043, z = 1779.314 }, rot = { x = 0.000, y = 198.363, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 340011, gadget_id = 70300102, pos = { x = 681.699, y = 316.765, z = 1778.825 }, rot = { x = 3.839, y = 0.916, z = 13.432 }, level = 1, area_id = 6 },
	{ config_id = 340012, gadget_id = 70300081, pos = { x = 682.976, y = 315.327, z = 1788.167 }, rot = { x = 0.000, y = 236.226, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340013, gadget_id = 70300081, pos = { x = 676.713, y = 315.039, z = 1779.551 }, rot = { x = 0.000, y = 188.531, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340014, gadget_id = 70300081, pos = { x = 679.599, y = 316.165, z = 1769.356 }, rot = { x = 0.000, y = 144.092, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340015, gadget_id = 70300084, pos = { x = 706.819, y = 319.761, z = 1769.614 }, rot = { x = 0.000, y = 342.714, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340016, gadget_id = 70300084, pos = { x = 699.101, y = 318.194, z = 1758.003 }, rot = { x = 0.000, y = 78.141, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340017, gadget_id = 70310001, pos = { x = 699.871, y = 318.743, z = 1761.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340018, gadget_id = 70310001, pos = { x = 704.694, y = 319.848, z = 1767.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340019, gadget_id = 70300102, pos = { x = 693.722, y = 318.581, z = 1779.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340020, gadget_id = 70220013, pos = { x = 697.813, y = 318.669, z = 1774.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340021, gadget_id = 70220013, pos = { x = 700.092, y = 318.897, z = 1772.771 }, rot = { x = 0.000, y = 33.386, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340022, gadget_id = 70220013, pos = { x = 697.645, y = 318.732, z = 1772.098 }, rot = { x = 0.000, y = 28.520, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340023, gadget_id = 70220014, pos = { x = 681.560, y = 316.674, z = 1773.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340024, gadget_id = 70220014, pos = { x = 680.863, y = 316.698, z = 1771.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 340025, gadget_id = 70220013, pos = { x = 682.522, y = 316.981, z = 1771.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 340010, shape = RegionShape.SPHERE, radius = 40, pos = { x = 690.502, y = 317.943, z = 1768.253 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1340008, name = "ANY_MONSTER_DIE_340008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_340008", action = "action_EVENT_ANY_MONSTER_DIE_340008" },
	{ config_id = 1340010, name = "ENTER_REGION_340010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340010" },
	{ config_id = 1340027, name = "GROUP_LOAD_340027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_340027", action = "action_EVENT_GROUP_LOAD_340027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "CHEST_CREATED", value = 0, no_refresh = true },
	{ config_id = 2, name = "KILL", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 340004, gadget_id = 70350201, pos = { x = 710.657, y = 319.027, z = 1757.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 6 },
		{ config_id = 340006, gadget_id = 70350201, pos = { x = 681.670, y = 317.229, z = 1778.876 }, rot = { x = 0.000, y = 0.000, z = 11.625 }, level = 19, isOneoff = true, persistent = true, area_id = 6 }
	},
	triggers = {
		{ config_id = 1340009, name = "GROUP_LOAD_340009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_340009" },
		{ config_id = 1340028, name = "ANY_MONSTER_DIE_340028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_340028", trigger_count = 4 }
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
		monsters = { 340001, 340002, 340003, 340026 },
		gadgets = { 340005, 340011, 340012, 340013, 340014, 340015, 340016, 340017, 340018, 340019, 340020, 340021, 340022, 340023, 340024, 340025 },
		regions = { 340010 },
		triggers = { "ANY_MONSTER_DIE_340008", "ENTER_REGION_340010", "GROUP_LOAD_340027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_340008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_340008(context, evt)
	-- 将本组内变量名为 "CHEST_CREATED" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "CHEST_CREATED", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 340007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,149,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_340027(context, evt)
	-- 判断变量"CHEST_CREATED"为1
	if ScriptLib.GetGroupVariableValue(context, "CHEST_CREATED") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_340027(context, evt)
	-- 创建宝箱gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 340007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/EnergyDisk"