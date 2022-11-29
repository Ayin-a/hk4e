-- 基础信息
local base_info = {
	group_id = 133213239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 239001, monster_id = 20010901, pos = { x = -3725.406, y = 228.488, z = -3259.910 }, rot = { x = 0.000, y = 332.746, z = 0.000 }, level = 28, drop_tag = "大史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 239002, monster_id = 20010901, pos = { x = -3733.398, y = 231.736, z = -3261.974 }, rot = { x = 0.000, y = 332.746, z = 0.000 }, level = 28, drop_tag = "大史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 239003, monster_id = 20010201, pos = { x = -3728.705, y = 227.846, z = -3254.348 }, rot = { x = 15.299, y = 354.030, z = 17.533 }, level = 28, drop_tag = "大史莱姆", pose_id = 201, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 239004, gadget_id = 70211102, pos = { x = -3729.389, y = 229.401, z = -3258.216 }, rot = { x = 347.917, y = 153.172, z = 30.976 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 239005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3729.942, y = 230.185, z = -3260.001 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1239005, name = "ENTER_REGION_239005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_239005", action = "action_EVENT_ENTER_REGION_239005" },
	{ config_id = 1239006, name = "ANY_MONSTER_DIE_239006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_239006", action = "action_EVENT_ANY_MONSTER_DIE_239006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 239004 },
		regions = { 239005 },
		triggers = { "ENTER_REGION_239005", "ANY_MONSTER_DIE_239006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 239001, 239002, 239003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_239006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_239005(context, evt)
	if evt.param1 ~= 239005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_239005(context, evt)
	-- 将configid为 239004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213239, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_239006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_239006(context, evt)
	-- 将configid为 239004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end