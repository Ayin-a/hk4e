-- 基础信息
local base_info = {
	group_id = 133303066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 25310301, pos = { x = -1243.263, y = 241.410, z = 3213.065 }, rot = { x = 0.000, y = 0.260, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 },
	{ config_id = 66004, monster_id = 25210201, pos = { x = -1237.329, y = 242.272, z = 3215.070 }, rot = { x = 0.000, y = 0.052, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 23 },
	{ config_id = 66005, monster_id = 25210201, pos = { x = -1255.934, y = 239.010, z = 3212.100 }, rot = { x = 0.000, y = 68.837, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66002, gadget_id = 70211012, pos = { x = -1237.760, y = 242.038, z = 3212.618 }, rot = { x = 0.000, y = 268.667, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "ANY_MONSTER_DIE_66003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_66003", action = "action_EVENT_ANY_MONSTER_DIE_66003" }
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
		monsters = { 66001, 66004, 66005 },
		gadgets = { 66002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_66003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_66003(context, evt)
	-- 将configid为 66002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66002, GadgetState.Default) then
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