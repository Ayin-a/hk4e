-- 基础信息
local base_info = {
	group_id = 133001506
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 506001, monster_id = 21020101, pos = { x = 1461.616, y = 288.898, z = -1273.310 }, rot = { x = 359.571, y = 294.781, z = 359.189 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, area_id = 2 },
	{ config_id = 506004, monster_id = 21010601, pos = { x = 1457.991, y = 288.973, z = -1277.277 }, rot = { x = 0.812, y = 80.417, z = 0.428 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 506005, monster_id = 21010601, pos = { x = 1472.393, y = 289.171, z = -1274.434 }, rot = { x = 359.571, y = 294.781, z = 359.189 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 506002, gadget_id = 70211012, pos = { x = 1458.458, y = 289.592, z = -1271.695 }, rot = { x = 12.466, y = 155.605, z = 3.983 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1506003, name = "ANY_MONSTER_DIE_506003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_506003", action = "action_EVENT_ANY_MONSTER_DIE_506003" }
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
		monsters = { 506001, 506004, 506005 },
		gadgets = { 506002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_506003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_506003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_506003(context, evt)
	-- 将configid为 506002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 506002, GadgetState.Default) then
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