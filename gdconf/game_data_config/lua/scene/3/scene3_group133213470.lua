-- 基础信息
local base_info = {
	group_id = 133213470
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 470001, monster_id = 24020401, pos = { x = -3781.246, y = 261.997, z = -3056.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 2, area_id = 12 },
	{ config_id = 470002, monster_id = 24020201, pos = { x = -3777.001, y = 262.407, z = -3057.181 }, rot = { x = 0.000, y = 282.158, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 470004, gadget_id = 70211102, pos = { x = -3789.502, y = 262.951, z = -3052.566 }, rot = { x = 353.246, y = 185.416, z = 4.310 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 470005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3786.504, y = 262.929, z = -3054.625 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1470005, name = "ENTER_REGION_470005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_470005", action = "action_EVENT_ENTER_REGION_470005" },
	{ config_id = 1470006, name = "ANY_MONSTER_DIE_470006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_470006", action = "action_EVENT_ANY_MONSTER_DIE_470006" }
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
		gadgets = { 470004 },
		regions = { 470005 },
		triggers = { "ENTER_REGION_470005", "ANY_MONSTER_DIE_470006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 470001, 470002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_470006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_470005(context, evt)
	if evt.param1 ~= 470005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_470005(context, evt)
	-- 将configid为 470004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213470, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_470006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_470006(context, evt)
	-- 将configid为 470004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 470004, GadgetState.Default) then
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