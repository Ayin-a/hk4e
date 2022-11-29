-- 基础信息
local base_info = {
	group_id = 133303455
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 455001, monster_id = 26090901, pos = { x = -1898.092, y = 46.830, z = 3206.063 }, rot = { x = 0.000, y = 170.117, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 455002, monster_id = 26090901, pos = { x = -1910.484, y = 46.134, z = 3214.849 }, rot = { x = 0.000, y = 170.117, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 455003, monster_id = 26090501, pos = { x = -1895.941, y = 47.820, z = 3216.976 }, rot = { x = 0.000, y = 170.117, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 455004, gadget_id = 70211002, pos = { x = -1899.858, y = 46.387, z = 3213.708 }, rot = { x = 357.716, y = 170.314, z = 350.116 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 455007, gadget_id = 70220107, pos = { x = -1900.869, y = 46.347, z = 3216.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 455008, gadget_id = 70220107, pos = { x = -1901.950, y = 46.342, z = 3211.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 455009, gadget_id = 70220107, pos = { x = -1897.420, y = 46.836, z = 3212.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 455010, gadget_id = 70220107, pos = { x = -1897.956, y = 46.915, z = 3215.420 }, rot = { x = 0.000, y = 42.646, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 455011, gadget_id = 70220107, pos = { x = -1902.906, y = 46.237, z = 3213.692 }, rot = { x = 0.000, y = 42.646, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 455012, gadget_id = 70220107, pos = { x = -1899.078, y = 46.554, z = 3210.841 }, rot = { x = 0.000, y = 42.646, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 455005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1899.935, y = 47.259, z = 3213.551 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1455005, name = "ENTER_REGION_455005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455005", action = "action_EVENT_ENTER_REGION_455005" },
	{ config_id = 1455006, name = "ANY_MONSTER_DIE_455006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_455006", action = "action_EVENT_ANY_MONSTER_DIE_455006" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 455013, gadget_id = 70220004, pos = { x = -1899.822, y = 45.115, z = 3213.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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
		-- description = ,
		monsters = { },
		gadgets = { 455004, 455007, 455008, 455009 },
		regions = { 455005 },
		triggers = { "ENTER_REGION_455005", "ANY_MONSTER_DIE_455006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 455001, 455002, 455003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_455006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 455010, 455011, 455012 },
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
function condition_EVENT_ENTER_REGION_455005(context, evt)
	if evt.param1 ~= 455005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_455005(context, evt)
	-- 将configid为 455004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303455, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_455006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_455006(context, evt)
	-- 将configid为 455004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303455, 3)
	
	return 0
end