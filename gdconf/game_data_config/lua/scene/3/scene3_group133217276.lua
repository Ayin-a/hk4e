-- 基础信息
local base_info = {
	group_id = 133217276
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 276001, monster_id = 25030301, pos = { x = -4317.823, y = 200.630, z = -3859.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 14 },
	{ config_id = 276003, monster_id = 25070101, pos = { x = -4315.831, y = 199.801, z = -3848.801 }, rot = { x = 0.000, y = 248.206, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 14 },
	{ config_id = 276007, monster_id = 25010501, pos = { x = -4324.626, y = 202.156, z = -3847.077 }, rot = { x = 0.000, y = 85.252, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 14 },
	{ config_id = 276010, monster_id = 25010401, pos = { x = -4323.815, y = 203.767, z = -3856.708 }, rot = { x = 0.000, y = 33.821, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 276004, gadget_id = 70211102, pos = { x = -4323.326, y = 201.854, z = -3851.339 }, rot = { x = 13.001, y = 73.827, z = 4.770 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 276005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4323.122, y = 201.985, z = -3851.331 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1276005, name = "ENTER_REGION_276005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_276005", action = "action_EVENT_ENTER_REGION_276005" },
	{ config_id = 1276006, name = "ANY_MONSTER_DIE_276006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_276006", action = "action_EVENT_ANY_MONSTER_DIE_276006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 276002, monster_id = 25030301, pos = { x = -4316.083, y = 199.612, z = -3842.032 }, rot = { x = 0.000, y = 185.623, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 14 },
		{ config_id = 276008, monster_id = 25010201, pos = { x = -4318.521, y = 199.922, z = -3852.960 }, rot = { x = 0.350, y = 35.828, z = 4.921 }, level = 30, drop_tag = "盗宝团", area_id = 14 },
		{ config_id = 276009, monster_id = 25010201, pos = { x = -4319.250, y = 199.705, z = -3849.773 }, rot = { x = 0.668, y = 93.611, z = 3.625 }, level = 30, drop_tag = "盗宝团", area_id = 14 }
	}
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
		gadgets = { 276004 },
		regions = { 276005 },
		triggers = { "ENTER_REGION_276005", "ANY_MONSTER_DIE_276006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 276001, 276003, 276007, 276010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_276006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_276005(context, evt)
	if evt.param1 ~= 276005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_276005(context, evt)
	-- 将configid为 276004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217276, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_276006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_276006(context, evt)
	-- 将configid为 276004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 276004, GadgetState.Default) then
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