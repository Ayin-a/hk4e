-- 基础信息
local base_info = {
	group_id = 133008262
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 262001, monster_id = 21011401, pos = { x = 1458.717, y = 274.303, z = -766.121 }, rot = { x = 0.000, y = 56.404, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 262004, monster_id = 21011401, pos = { x = 1460.592, y = 273.925, z = -767.857 }, rot = { x = 0.000, y = 355.283, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 262005, monster_id = 21011401, pos = { x = 1462.702, y = 273.354, z = -766.364 }, rot = { x = 0.000, y = 311.988, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 262002, gadget_id = 70211012, pos = { x = 1460.440, y = 273.611, z = -764.429 }, rot = { x = 343.983, y = 238.178, z = 8.729 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1262003, name = "ANY_MONSTER_DIE_262003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_262003", action = "action_EVENT_ANY_MONSTER_DIE_262003" }
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
		monsters = { 262001, 262004, 262005 },
		gadgets = { 262002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_262003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_262003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_262003(context, evt)
	-- 将configid为 262002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 262002, GadgetState.Default) then
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