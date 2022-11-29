-- 基础信息
local base_info = {
	group_id = 133001608
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 608002, monster_id = 21011002, pos = { x = 1464.100, y = 262.961, z = -1565.555 }, rot = { x = 0.000, y = 254.009, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 2 },
	{ config_id = 608003, monster_id = 22010301, pos = { x = 1466.241, y = 263.037, z = -1560.600 }, rot = { x = 0.000, y = 223.720, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, area_id = 2 },
	{ config_id = 608004, monster_id = 21011002, pos = { x = 1459.793, y = 262.608, z = -1566.153 }, rot = { x = 0.000, y = 89.293, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 608001, gadget_id = 70350201, pos = { x = 1456.982, y = 268.425, z = -1561.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2, is_enable_interact = false },
	{ config_id = 608005, gadget_id = 70360163, pos = { x = 1462.047, y = 262.790, z = -1566.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 608008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1461.006, y = 262.610, z = -1560.709 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1608006, name = "ANY_MONSTER_DIE_608006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_608006", action = "action_EVENT_ANY_MONSTER_DIE_608006" },
	{ config_id = 1608007, name = "GROUP_LOAD_608007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_608007" },
	{ config_id = 1608008, name = "ENTER_REGION_608008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_608008", trigger_count = 0 }
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
		monsters = { 608002, 608003, 608004 },
		gadgets = { 608001 },
		regions = { 608008 },
		triggers = { "ANY_MONSTER_DIE_608006", "GROUP_LOAD_608007", "ENTER_REGION_608008" },
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
function condition_EVENT_ANY_MONSTER_DIE_608006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_608006(context, evt)
	-- 将configid为 608005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 608005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_608007(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 608005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_608008(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end