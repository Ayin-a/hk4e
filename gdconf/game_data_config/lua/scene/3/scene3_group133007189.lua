-- 基础信息
local base_info = {
	group_id = 133007189
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 189001, monster_id = 21010603, pos = { x = 2474.023, y = 218.052, z = -59.042 }, rot = { x = 0.000, y = 51.325, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 189004, monster_id = 21010701, pos = { x = 2477.125, y = 217.958, z = -59.292 }, rot = { x = 0.000, y = 319.043, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 189002, gadget_id = 70211012, pos = { x = 2475.800, y = 217.970, z = -61.000 }, rot = { x = 0.000, y = 339.172, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 189006, gadget_id = 70310006, pos = { x = 2475.506, y = 217.997, z = -58.007 }, rot = { x = 0.000, y = 182.474, z = 0.000 }, level = 23, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 189007, gadget_id = 70220013, pos = { x = 2471.175, y = 218.150, z = -57.281 }, rot = { x = 0.000, y = 314.058, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1189003, name = "ANY_MONSTER_DIE_189003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_189003", action = "action_EVENT_ANY_MONSTER_DIE_189003" }
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
		monsters = { 189001, 189004 },
		gadgets = { 189002, 189006, 189007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_189003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_189003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_189003(context, evt)
	-- 将configid为 189002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 189002, GadgetState.Default) then
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