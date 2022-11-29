-- 基础信息
local base_info = {
	group_id = 177008011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 21020701, pos = { x = -198.641, y = 244.374, z = 165.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 11004, monster_id = 21010402, pos = { x = -198.640, y = 244.690, z = 173.394 }, rot = { x = 0.000, y = 153.020, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 11005, monster_id = 21020201, pos = { x = -202.544, y = 244.909, z = 167.803 }, rot = { x = 0.000, y = 54.207, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 11006, monster_id = 21010201, pos = { x = -195.245, y = 244.276, z = 169.238 }, rot = { x = 0.000, y = 258.807, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 11007, monster_id = 21030103, pos = { x = -202.328, y = 245.092, z = 171.622 }, rot = { x = 0.000, y = 94.278, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11002, gadget_id = 70211158, pos = { x = -198.684, y = 244.654, z = 169.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 11008, gadget_id = 70220014, pos = { x = -205.069, y = 245.540, z = 175.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 11009, gadget_id = 70220014, pos = { x = -204.347, y = 245.392, z = 176.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 11010, gadget_id = 70220014, pos = { x = -203.991, y = 245.301, z = 175.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 11011, gadget_id = 70220013, pos = { x = -201.887, y = 244.322, z = 161.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 11012, gadget_id = 70220013, pos = { x = -199.746, y = 244.108, z = 161.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011003, name = "ANY_MONSTER_DIE_11003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11003", action = "action_EVENT_ANY_MONSTER_DIE_11003" }
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
		monsters = { 11001, 11004, 11005, 11006, 11007 },
		gadgets = { 11002, 11008, 11009, 11010, 11011, 11012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11003(context, evt)
	-- 将configid为 11002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end