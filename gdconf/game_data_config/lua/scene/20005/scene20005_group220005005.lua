-- 基础信息
local base_info = {
	group_id = 220005005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 20010801, pos = { x = -190.667, y = 22.035, z = 41.286 }, rot = { x = 0.000, y = 88.766, z = 0.000 }, level = 1 },
	{ config_id = 5018, monster_id = 20010801, pos = { x = -197.650, y = 21.535, z = 52.337 }, rot = { x = 0.000, y = 136.230, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 5019, monster_id = 20010801, pos = { x = -186.499, y = 21.535, z = 68.901 }, rot = { x = 0.000, y = 136.230, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 5021, monster_id = 20010801, pos = { x = -201.049, y = 21.535, z = 83.420 }, rot = { x = 0.000, y = 136.230, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 5022, monster_id = 20010801, pos = { x = -191.514, y = 22.757, z = 106.871 }, rot = { x = 0.000, y = 136.230, z = 0.000 }, level = 1, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70350019, pos = { x = -192.782, y = 21.535, z = 43.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5003, gadget_id = 70350019, pos = { x = -189.902, y = 21.535, z = 62.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5004, gadget_id = 70350019, pos = { x = -196.031, y = 21.535, z = 75.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5005, gadget_id = 70350019, pos = { x = -186.761, y = 21.535, z = 90.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5006, gadget_id = 70350019, pos = { x = -196.598, y = 21.807, z = 104.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5009, gadget_id = 70350019, pos = { x = -194.398, y = 21.535, z = 52.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5010, gadget_id = 70350019, pos = { x = -179.859, y = 25.236, z = 127.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5012, gadget_id = 70350019, pos = { x = -190.311, y = 25.285, z = 118.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5013, gadget_id = 70350019, pos = { x = -196.289, y = 25.285, z = 130.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 5007, shape = RegionShape.SPHERE, radius = 10.27, pos = { x = -190.223, y = 21.695, z = 111.447 } }
}

-- 触发器
triggers = {
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5007", action = "action_EVENT_ENTER_REGION_5007", forbid_guest = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5001, 5018, 5019, 5021, 5022 },
		gadgets = { 5002, 5003, 5004, 5005, 5006, 5009, 5010, 5012, 5013 },
		regions = { 5007 },
		triggers = { "ENTER_REGION_5007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 ~= 5007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005005, monsters = {}, gadgets = {5002,5003,5004,5005} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end