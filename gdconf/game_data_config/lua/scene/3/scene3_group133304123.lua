-- 基础信息
local base_info = {
	group_id = 133304123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123001, monster_id = 23020101, pos = { x = -1538.597, y = 369.918, z = 2058.300 }, rot = { x = 0.000, y = 318.265, z = 0.000 }, level = 30, drop_tag = "债务处理人", disableWander = true, area_id = 21 },
	{ config_id = 123005, monster_id = 25210203, pos = { x = -1540.177, y = 371.898, z = 2064.992 }, rot = { x = 0.000, y = 127.899, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 123006, monster_id = 25210203, pos = { x = -1538.513, y = 371.342, z = 2065.284 }, rot = { x = 0.000, y = 153.359, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 123002, gadget_id = 70211002, pos = { x = -1538.811, y = 370.703, z = 2061.581 }, rot = { x = 339.045, y = 281.273, z = 8.638 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 123004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1538.811, y = 370.703, z = 2061.581 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1123003, name = "ANY_MONSTER_DIE_123003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_123003", action = "action_EVENT_ANY_MONSTER_DIE_123003", trigger_count = 0 },
	{ config_id = 1123004, name = "ENTER_REGION_123004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123004", action = "action_EVENT_ENTER_REGION_123004" }
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
		monsters = { 123006 },
		gadgets = { 123002 },
		regions = { 123004 },
		triggers = { "ENTER_REGION_123004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 123001, 123005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_123003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_123003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_123003(context, evt)
	-- 将configid为 123002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_123004(context, evt)
	if evt.param1 ~= 123004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304123, 2)
	
	return 0
end