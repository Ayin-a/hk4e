-- 基础信息
local base_info = {
	group_id = 133008667
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 667001, monster_id = 21010901, pos = { x = 1181.957, y = 257.870, z = -377.170 }, rot = { x = 0.000, y = 354.844, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 667002, monster_id = 21010901, pos = { x = 1187.636, y = 254.645, z = -371.493 }, rot = { x = 0.000, y = 260.808, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 667003, monster_id = 21011401, pos = { x = 1174.986, y = 255.861, z = -369.577 }, rot = { x = 0.000, y = 119.592, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
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
	{ config_id = 667004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1180.261, y = 256.369, z = -373.044 }, area_id = 10 }
}

-- 触发器
triggers = {
	-- 进入区域后，1）创建Suite2内的怪物；2）锁上宝箱
	{ config_id = 1667004, name = "ENTER_REGION_667004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_667004", action = "action_EVENT_ENTER_REGION_667004" },
	-- 消灭全部怪物后，1）解除宝箱锁定；2）让Group进入空Suite
	{ config_id = 1667005, name = "ANY_MONSTER_DIE_667005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_667005", action = "action_EVENT_ANY_MONSTER_DIE_667005" }
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
		regions = { 667004 },
		triggers = { "ENTER_REGION_667004", "ANY_MONSTER_DIE_667005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 667001, 667002, 667003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_667005" },
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
function condition_EVENT_ENTER_REGION_667004(context, evt)
	if evt.param1 ~= 667004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_667004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008667, 2)
	
	-- 改变指定group组133008121中， configid为121027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008121, 121027, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_667005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_667005(context, evt)
	-- 改变指定group组133008121中， configid为121027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133008121, 121027, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133008667, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end