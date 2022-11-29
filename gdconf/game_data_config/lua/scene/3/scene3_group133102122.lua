-- 基础信息
local base_info = {
	group_id = 133102122
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 122005, monster_id = 24010101, pos = { x = 1440.304, y = 217.681, z = 634.971 }, rot = { x = 0.000, y = 270.216, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", pose_id = 100, area_id = 5 },
	{ config_id = 122006, monster_id = 24010101, pos = { x = 1431.399, y = 215.560, z = 628.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", pose_id = 100, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 122001, gadget_id = 70360163, pos = { x = 1446.337, y = 228.440, z = 620.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 5 },
	{ config_id = 122002, gadget_id = 70350201, pos = { x = 1453.983, y = 223.470, z = 623.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 122003, gadget_id = 70350201, pos = { x = 1446.356, y = 228.440, z = 630.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 122009, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1429.213, y = 215.108, z = 628.505 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1122007, name = "ANY_MONSTER_DIE_122007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_122007", action = "action_EVENT_ANY_MONSTER_DIE_122007" },
	{ config_id = 1122008, name = "GROUP_LOAD_122008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_122008" },
	{ config_id = 1122009, name = "ENTER_REGION_122009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_122009", trigger_count = 0 }
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
		monsters = { 122005, 122006 },
		gadgets = { 122002, 122003 },
		regions = { 122009 },
		triggers = { "ANY_MONSTER_DIE_122007", "GROUP_LOAD_122008", "ENTER_REGION_122009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_122007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_122007(context, evt)
	-- 将configid为 122001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 122001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_122008(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 122001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_122009(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
end