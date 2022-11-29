-- 基础信息
local base_info = {
	group_id = 133303101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 25010501, pos = { x = -1243.492, y = 227.851, z = 3969.486 }, rot = { x = 0.000, y = 16.051, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 23 },
	{ config_id = 101004, monster_id = 25030201, pos = { x = -1232.921, y = 230.178, z = 3982.514 }, rot = { x = 0.000, y = 312.206, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 101005, monster_id = 25020201, pos = { x = -1231.823, y = 230.231, z = 3985.925 }, rot = { x = 0.000, y = 207.953, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 23 },
	{ config_id = 101007, monster_id = 25020201, pos = { x = -1241.970, y = 227.851, z = 3973.734 }, rot = { x = 0.000, y = 203.703, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9007, area_id = 23 },
	{ config_id = 101009, monster_id = 25010701, pos = { x = -1235.943, y = 229.581, z = 3993.198 }, rot = { x = 0.000, y = 201.392, z = 0.000 }, level = 30, drop_tag = "盗宝团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101002, gadget_id = 70211002, pos = { x = -1239.932, y = 227.791, z = 3970.696 }, rot = { x = 0.000, y = 285.898, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 101006, gadget_id = 70310009, pos = { x = -1233.883, y = 229.814, z = 3983.561 }, rot = { x = 0.000, y = 269.941, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 101008, gadget_id = 70220052, pos = { x = -1241.954, y = 227.858, z = 3971.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 101010, gadget_id = 70210101, pos = { x = -1264.903, y = 226.784, z = 3992.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003" }
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
		monsters = { 101001, 101004, 101005, 101007, 101009 },
		gadgets = { 101002, 101006, 101008, 101010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
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