-- 基础信息
local base_info = {
	group_id = 133007149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149001, monster_id = 21010603, pos = { x = 2748.360, y = 219.709, z = 232.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "丘丘人", disableWander = true, pose_id = 32, area_id = 4 },
	{ config_id = 149002, monster_id = 21011001, pos = { x = 2751.503, y = 215.672, z = 250.615 }, rot = { x = 0.000, y = 20.667, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149003, gadget_id = 70211012, pos = { x = 2745.102, y = 218.945, z = 229.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149004, name = "ANY_MONSTER_DIE_149004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_149004", action = "action_EVENT_ANY_MONSTER_DIE_149004" }
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
		monsters = { 149001, 149002 },
		gadgets = { 149003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_149004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_149004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_149004(context, evt)
	-- 将configid为 149003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149003, GadgetState.Default) then
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