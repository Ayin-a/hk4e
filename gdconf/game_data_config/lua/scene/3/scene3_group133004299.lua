-- 基础信息
local base_info = {
	group_id = 133004299
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 299004, monster_id = 21030301, pos = { x = 2227.544, y = 271.433, z = -269.639 }, rot = { x = 0.000, y = 208.269, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 299005, monster_id = 21010501, pos = { x = 2226.691, y = 271.416, z = -273.629 }, rot = { x = 0.000, y = 355.654, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 299006, monster_id = 21010301, pos = { x = 2229.128, y = 271.287, z = -271.679 }, rot = { x = 0.000, y = 262.204, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 299007, monster_id = 20010301, pos = { x = 2229.090, y = 271.327, z = -269.869 }, rot = { x = 0.000, y = 233.615, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 299002, gadget_id = 70211012, pos = { x = 2224.224, y = 271.485, z = -272.244 }, rot = { x = 357.600, y = 66.300, z = 357.800 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1299003, name = "ANY_MONSTER_DIE_299003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_299003", action = "action_EVENT_ANY_MONSTER_DIE_299003" }
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
		monsters = { 299004, 299005, 299006, 299007 },
		gadgets = { 299002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_299003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_299003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_299003(context, evt)
	-- 将configid为 299002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 299002, GadgetState.Default) then
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