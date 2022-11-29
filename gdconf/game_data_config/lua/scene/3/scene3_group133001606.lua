-- 基础信息
local base_info = {
	group_id = 133001606
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 606001, monster_id = 21020202, pos = { x = 1215.709, y = 257.132, z = -1528.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 2 },
	{ config_id = 606003, monster_id = 21011002, pos = { x = 1209.484, y = 256.579, z = -1519.901 }, rot = { x = 0.000, y = 121.723, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 2 },
	{ config_id = 606004, monster_id = 21011002, pos = { x = 1213.250, y = 256.495, z = -1522.461 }, rot = { x = 0.000, y = 320.269, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 2 },
	{ config_id = 606008, monster_id = 21020101, pos = { x = 1209.756, y = 256.865, z = -1523.304 }, rot = { x = 0.000, y = 38.192, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 2 },
	{ config_id = 606009, monster_id = 22010301, pos = { x = 1204.020, y = 259.293, z = -1510.342 }, rot = { x = 0.000, y = 124.307, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 606002, gadget_id = 70360163, pos = { x = 1211.582, y = 256.414, z = -1520.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	{ config_id = 606006, gadget_id = 70350201, pos = { x = 1200.785, y = 259.149, z = -1541.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2, is_enable_interact = false }
}

-- 区域
regions = {
	{ config_id = 606005, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1214.682, y = 257.417, z = -1532.871 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1606005, name = "ENTER_REGION_606005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_606005", trigger_count = 0 },
	{ config_id = 1606007, name = "ANY_MONSTER_DIE_606007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_606007", action = "action_EVENT_ANY_MONSTER_DIE_606007" },
	{ config_id = 1606010, name = "GROUP_LOAD_606010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_606010" }
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
		monsters = { 606001, 606003, 606004, 606008, 606009 },
		gadgets = { 606006 },
		regions = { 606005 },
		triggers = { "ENTER_REGION_606005", "ANY_MONSTER_DIE_606007", "GROUP_LOAD_606010" },
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

-- 触发操作
function action_EVENT_ENTER_REGION_606005(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_606007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_606007(context, evt)
	-- 将configid为 606002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 606002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_606010(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 606002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end