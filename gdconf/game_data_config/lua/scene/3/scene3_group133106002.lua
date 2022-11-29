-- 基础信息
local base_info = {
	group_id = 133106002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 24010101, pos = { x = -291.161, y = 206.376, z = 1088.197 }, rot = { x = 0.000, y = 129.569, z = 0.000 }, level = 1, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70350201, pos = { x = -279.093, y = 206.475, z = 1102.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 2003, gadget_id = 70360163, pos = { x = -288.630, y = 206.419, z = 1086.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 2012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -266.221, y = 200.160, z = 1073.246 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2004", action = "action_EVENT_ANY_MONSTER_DIE_2004" },
	{ config_id = 1002011, name = "GROUP_LOAD_2011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2011" },
	{ config_id = 1002012, name = "ENTER_REGION_2012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2012", trigger_count = 0 }
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
		monsters = { 2002 },
		gadgets = { 2001 },
		regions = { 2012 },
		triggers = { "ANY_MONSTER_DIE_2004", "GROUP_LOAD_2011", "ENTER_REGION_2012" },
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
function condition_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 将configid为 2003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2011(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 2003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2012(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end