-- 基础信息
local base_info = {
	group_id = 133315188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 25030301, pos = { x = 347.116, y = 343.048, z = 2059.359 }, rot = { x = 0.000, y = 64.804, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 20 },
	{ config_id = 188004, monster_id = 25030301, pos = { x = 351.759, y = 343.523, z = 2062.455 }, rot = { x = 0.000, y = 236.775, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 20 },
	{ config_id = 188005, monster_id = 25010401, pos = { x = 323.992, y = 345.150, z = 2073.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9005, area_id = 20 },
	{ config_id = 188006, monster_id = 28061201, pos = { x = 337.449, y = 341.898, z = 2061.729 }, rot = { x = 0.000, y = 33.673, z = 0.000 }, level = 27, drop_tag = "驮兽盗宝团", pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188002, gadget_id = 70211002, pos = { x = 345.883, y = 342.698, z = 2059.498 }, rot = { x = 11.739, y = 302.423, z = 357.345 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188003, name = "ANY_MONSTER_DIE_188003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188003", action = "action_EVENT_ANY_MONSTER_DIE_188003" }
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
		monsters = { 188001, 188004, 188005, 188006 },
		gadgets = { 188002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188003(context, evt)
	-- 将configid为 188002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188002, GadgetState.Default) then
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