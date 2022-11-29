-- 基础信息
local base_info = {
	group_id = 133007152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 21011001, pos = { x = 2548.470, y = 207.187, z = 247.306 }, rot = { x = 0.000, y = 223.598, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 4 },
	{ config_id = 152004, monster_id = 21030101, pos = { x = 2552.930, y = 206.909, z = 249.793 }, rot = { x = 0.000, y = 348.669, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", disableWander = true, area_id = 4 },
	{ config_id = 152005, monster_id = 21010401, pos = { x = 2550.442, y = 207.020, z = 247.736 }, rot = { x = 0.000, y = 343.082, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152002, gadget_id = 70211012, pos = { x = 2548.798, y = 207.050, z = 250.399 }, rot = { x = 0.000, y = 159.805, z = 0.000 }, level = 21, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1152003, name = "ANY_MONSTER_DIE_152003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152003", action = "action_EVENT_ANY_MONSTER_DIE_152003" }
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
		monsters = { 152001, 152004, 152005 },
		gadgets = { 152002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_152003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_152003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152003(context, evt)
	-- 将configid为 152002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 152002, GadgetState.Default) then
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