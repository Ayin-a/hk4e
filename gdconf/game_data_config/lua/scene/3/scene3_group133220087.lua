-- 基础信息
local base_info = {
	group_id = 133220087
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 87001, monster_id = 21011601, pos = { x = -2436.955, y = 251.809, z = -4520.104 }, rot = { x = 0.000, y = 336.318, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 87002, monster_id = 21011601, pos = { x = -2430.107, y = 250.052, z = -4504.776 }, rot = { x = 0.000, y = 251.705, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 87003, monster_id = 21010601, pos = { x = -2443.446, y = 256.367, z = -4507.774 }, rot = { x = 0.000, y = 116.235, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 32, area_id = 11 },
	{ config_id = 87008, monster_id = 21010601, pos = { x = -2442.298, y = 256.052, z = -4504.139 }, rot = { x = 0.000, y = 137.387, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 32, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 87004, gadget_id = 70211012, pos = { x = -2438.493, y = 245.985, z = -4507.272 }, rot = { x = 358.962, y = 0.086, z = 350.513 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 87007, gadget_id = 70300085, pos = { x = -2438.617, y = 245.541, z = -4507.177 }, rot = { x = 359.118, y = 0.075, z = 350.247 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 87005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2437.839, y = 252.133, z = -4507.032 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1087005, name = "ENTER_REGION_87005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_87005", action = "action_EVENT_ENTER_REGION_87005" },
	{ config_id = 1087006, name = "ANY_MONSTER_DIE_87006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_87006", action = "action_EVENT_ANY_MONSTER_DIE_87006" }
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
		gadgets = { 87004, 87007 },
		regions = { 87005 },
		triggers = { "ENTER_REGION_87005", "ANY_MONSTER_DIE_87006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 87001, 87002, 87003, 87008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_87006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_87005(context, evt)
	if evt.param1 ~= 87005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87005(context, evt)
	-- 将configid为 87004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220087, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_87006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_87006(context, evt)
	-- 将configid为 87004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 87004, GadgetState.Default) then
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