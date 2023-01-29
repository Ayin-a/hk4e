-- 基础信息
local base_info = {
	group_id = 133314067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 67001, monster_id = 21010901, pos = { x = -197.254, y = -47.813, z = 4835.180 }, rot = { x = 0.000, y = 177.426, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 32 },
	{ config_id = 67002, monster_id = 21010901, pos = { x = -197.494, y = -48.136, z = 4830.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 32 },
	{ config_id = 67003, monster_id = 28060301, pos = { x = -197.057, y = -46.078, z = 4832.894 }, rot = { x = 0.000, y = 123.634, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 67005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -197.172, y = -47.634, z = 4832.716 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1067004, name = "ANY_MONSTER_DIE_67004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_67004", action = "action_EVENT_ANY_MONSTER_DIE_67004" },
	{ config_id = 1067005, name = "ENTER_REGION_67005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_67005", action = "action_EVENT_ENTER_REGION_67005" }
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
		monsters = { 67003 },
		gadgets = { },
		regions = { 67005 },
		triggers = { "ENTER_REGION_67005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 67001, 67002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_67004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_67004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_67004(context, evt)
	-- 改变指定group组133314291中， configid为291004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314291, 291004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_67005(context, evt)
	if evt.param1 ~= 67005 then return false end
	
	-- 判断是区域67005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 67005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_67005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314067, 2)
	
	return 0
end