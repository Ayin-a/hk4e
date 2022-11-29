-- 基础信息
local base_info = {
	group_id = 177008009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21030601, pos = { x = -278.955, y = 211.369, z = 141.876 }, rot = { x = 0.000, y = 312.502, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 9004, monster_id = 21010401, pos = { x = -279.515, y = 212.485, z = 148.749 }, rot = { x = 0.000, y = 193.371, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 9005, monster_id = 21010401, pos = { x = -282.960, y = 210.716, z = 141.873 }, rot = { x = 0.000, y = 36.588, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 9006, monster_id = 21010201, pos = { x = -283.980, y = 211.412, z = 146.394 }, rot = { x = 0.000, y = 105.887, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 },
	{ config_id = 9007, monster_id = 21010201, pos = { x = -275.306, y = 212.448, z = 147.048 }, rot = { x = 0.000, y = 245.673, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9002, gadget_id = 70211156, pos = { x = -281.105, y = 211.461, z = 145.332 }, rot = { x = 348.461, y = 359.241, z = 3.788 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 9008, gadget_id = 70220014, pos = { x = -276.747, y = 211.750, z = 141.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 9009, gadget_id = 70220014, pos = { x = -275.668, y = 211.994, z = 142.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 9010, gadget_id = 70220014, pos = { x = -285.964, y = 210.818, z = 144.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 9011, gadget_id = 70220014, pos = { x = -285.294, y = 210.666, z = 143.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ANY_MONSTER_DIE_9003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9003", action = "action_EVENT_ANY_MONSTER_DIE_9003" }
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
		monsters = { 9001, 9004, 9005, 9006, 9007 },
		gadgets = { 9002, 9008, 9009, 9010, 9011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9003(context, evt)
	-- 将configid为 9002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9002, GadgetState.Default) then
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