-- 基础信息
local base_info = {
	group_id = 133108179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179006, monster_id = 21010902, pos = { x = -106.159, y = 202.934, z = -982.583 }, rot = { x = 0.000, y = 343.059, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 179008, monster_id = 21010902, pos = { x = -108.845, y = 202.957, z = -983.742 }, rot = { x = 0.000, y = 328.578, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 179010, monster_id = 21011002, pos = { x = -107.607, y = 202.927, z = -983.057 }, rot = { x = 0.000, y = 332.074, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 },
	{ config_id = 179012, monster_id = 21010502, pos = { x = -110.029, y = 202.927, z = -984.755 }, rot = { x = 0.000, y = 323.470, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179007, gadget_id = 70360163, pos = { x = -102.903, y = 202.919, z = -993.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 179009, gadget_id = 70350201, pos = { x = -104.506, y = 202.919, z = -992.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 179002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -104.520, y = 202.856, z = -988.513 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1179001, name = "GROUP_LOAD_179001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_179001" },
	{ config_id = 1179002, name = "ENTER_REGION_179002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_179002", trigger_count = 0 },
	{ config_id = 1179011, name = "ANY_MONSTER_DIE_179011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_179011", action = "action_EVENT_ANY_MONSTER_DIE_179011" }
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
		monsters = { 179006, 179008, 179010, 179012 },
		gadgets = { 179009 },
		regions = { 179002 },
		triggers = { "GROUP_LOAD_179001", "ENTER_REGION_179002", "ANY_MONSTER_DIE_179011" },
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
function action_EVENT_GROUP_LOAD_179001(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 179007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_179002(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_179011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_179011(context, evt)
	-- 将configid为 179007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end