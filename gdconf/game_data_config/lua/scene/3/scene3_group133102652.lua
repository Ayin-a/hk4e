-- 基础信息
local base_info = {
	group_id = 133102652
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 652001, monster_id = 25020201, pos = { x = 1913.314, y = 215.750, z = 876.068 }, rot = { x = 0.000, y = 281.133, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 5 },
	{ config_id = 652004, monster_id = 25020201, pos = { x = 1914.690, y = 216.338, z = 880.808 }, rot = { x = 0.000, y = 106.424, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 5 },
	{ config_id = 652006, monster_id = 25020201, pos = { x = 1917.685, y = 216.582, z = 883.613 }, rot = { x = 0.000, y = 219.970, z = 0.000 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 5 },
	{ config_id = 652008, monster_id = 25030201, pos = { x = 1917.720, y = 216.598, z = 877.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "盗宝团", pose_id = 9009, area_id = 5 }
}

-- NPC
npcs = {
	{ config_id = 652007, npc_id = 20076, pos = { x = 1896.338, y = 206.823, z = 853.440 }, rot = { x = 0.000, y = 66.378, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 652002, gadget_id = 70211012, pos = { x = 1928.740, y = 217.421, z = 882.203 }, rot = { x = 8.971, y = 271.530, z = 356.704 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 652005, gadget_id = 70360040, pos = { x = 1896.345, y = 206.823, z = 853.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652003, name = "ANY_MONSTER_DIE_652003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_652003", action = "action_EVENT_ANY_MONSTER_DIE_652003" }
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
		monsters = { 652001, 652004, 652006, 652008 },
		gadgets = { 652002, 652005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_652003" },
		npcs = { 652007 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 将configid为 652002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652002, GadgetState.Default) then
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