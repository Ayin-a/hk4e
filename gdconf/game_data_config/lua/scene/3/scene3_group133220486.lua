-- 基础信息
local base_info = {
	group_id = 133220486
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 486001, monster_id = 24010101, pos = { x = -2343.098, y = 191.689, z = -4282.290 }, rot = { x = 0.000, y = 56.100, z = 0.000 }, level = 27, drop_tag = "遗迹守卫", pose_id = 101, area_id = 11 },
	{ config_id = 486002, monster_id = 24010101, pos = { x = -2328.035, y = 191.583, z = -4282.398 }, rot = { x = 0.633, y = 284.475, z = 357.015 }, level = 27, drop_tag = "遗迹守卫", pose_id = 101, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 486004, gadget_id = 70211102, pos = { x = -2336.245, y = 191.299, z = -4278.315 }, rot = { x = 0.000, y = 17.665, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 486007, gadget_id = 70310007, pos = { x = -2342.529, y = 191.689, z = -4281.907 }, rot = { x = 0.000, y = 56.100, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 486008, gadget_id = 70310007, pos = { x = -2345.202, y = 191.575, z = -4273.739 }, rot = { x = 336.811, y = 115.676, z = 354.330 }, level = 27, area_id = 11 },
	{ config_id = 486009, gadget_id = 70310007, pos = { x = -2328.703, y = 191.576, z = -4282.226 }, rot = { x = 0.633, y = 284.475, z = 357.015 }, level = 27, area_id = 11 },
	{ config_id = 486010, gadget_id = 70310007, pos = { x = -2301.400, y = 189.863, z = -4284.413 }, rot = { x = 325.464, y = 165.460, z = 342.822 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 486005, shape = RegionShape.CUBIC, size = { x = 20.000, y = 5.000, z = 20.000 }, pos = { x = -2343.496, y = 190.230, z = -4285.144 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1486005, name = "ENTER_REGION_486005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_486005", action = "action_EVENT_ENTER_REGION_486005", trigger_count = 0 },
	{ config_id = 1486006, name = "ANY_MONSTER_DIE_486006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_486006", action = "action_EVENT_ANY_MONSTER_DIE_486006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "waterdown", value = 0, no_refresh = true }
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
		gadgets = { 486004, 486007, 486008, 486009, 486010 },
		regions = { 486005 },
		triggers = { "ENTER_REGION_486005", "ANY_MONSTER_DIE_486006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 486001, 486002 },
		gadgets = { 486004, 486008, 486010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_486006" },
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
function condition_EVENT_ENTER_REGION_486005(context, evt)
	if evt.param1 ~= 486005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"waterdown"为1
	if ScriptLib.GetGroupVariableValue(context, "waterdown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_486005(context, evt)
	-- 将configid为 486004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220486, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_486006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_486006(context, evt)
	-- 将configid为 486004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 486004, GadgetState.Default) then
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