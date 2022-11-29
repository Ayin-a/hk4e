-- 基础信息
local base_info = {
	group_id = 133008662
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 662001, monster_id = 26060301, pos = { x = 1318.512, y = 279.941, z = -486.479 }, rot = { x = 0.000, y = 38.945, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 662002, monster_id = 26060301, pos = { x = 1318.913, y = 279.890, z = -489.028 }, rot = { x = 0.000, y = 38.945, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 662003, monster_id = 26060301, pos = { x = 1315.673, y = 280.143, z = -487.377 }, rot = { x = 0.000, y = 38.945, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 662004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1317.190, y = 280.929, z = -488.325 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 1662004, name = "ENTER_REGION_662004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_662004", action = "action_EVENT_ENTER_REGION_662004" },
	-- 消灭全部怪物后，1）解除宝箱锁定；2）让Group进入空Suite
	{ config_id = 1662005, name = "ANY_MONSTER_DIE_662005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_662005", action = "action_EVENT_ANY_MONSTER_DIE_662005" }
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
	end_suite = 3,
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
		regions = { 662004 },
		triggers = { "ENTER_REGION_662004", "ANY_MONSTER_DIE_662005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 662001, 662002, 662003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_662005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ENTER_REGION_662004(context, evt)
	if evt.param1 ~= 662004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_662004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008662, 2)
	
	-- 改变指定group组133008121中， configid为121004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008121, 121004, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_662005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_662005(context, evt)
	-- 改变指定group组133008121中， configid为121004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008121, 121004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008662, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end