-- 基础信息
local base_info = {
	group_id = 133008308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308001, monster_id = 21011401, pos = { x = 1092.557, y = 200.000, z = -1195.101 }, rot = { x = 0.000, y = 221.105, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 308004, monster_id = 21011401, pos = { x = 1112.090, y = 200.000, z = -1175.913 }, rot = { x = 0.000, y = 333.412, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 308005, monster_id = 21020601, pos = { x = 1096.530, y = 200.384, z = -1175.190 }, rot = { x = 0.000, y = 93.656, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", climate_area_id = 1, area_id = 10 },
	{ config_id = 308006, monster_id = 21010901, pos = { x = 1108.640, y = 201.859, z = -1184.813 }, rot = { x = 359.182, y = 267.543, z = 1.827 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308002, gadget_id = 70211146, pos = { x = 1106.457, y = 199.721, z = -1186.082 }, rot = { x = 356.840, y = 257.781, z = 3.765 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1308003, name = "ANY_MONSTER_DIE_308003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308003", action = "action_EVENT_ANY_MONSTER_DIE_308003" }
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
		monsters = { 308001, 308004, 308005, 308006 },
		gadgets = { 308002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_308003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308003(context, evt)
	-- 将configid为 308002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308002, GadgetState.Default) then
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