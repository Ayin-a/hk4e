-- 基础信息
local base_info = {
	group_id = 133004308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308004, monster_id = 21020201, pos = { x = 2421.569, y = 240.864, z = -398.577 }, rot = { x = 0.000, y = 156.280, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, area_id = 3 },
	{ config_id = 308005, monster_id = 21010901, pos = { x = 2422.365, y = 240.856, z = -403.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 308006, monster_id = 21010101, pos = { x = 2420.288, y = 240.862, z = -402.416 }, rot = { x = 0.000, y = 71.007, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 308007, monster_id = 21030101, pos = { x = 2423.919, y = 240.865, z = -399.207 }, rot = { x = 0.000, y = 212.012, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 308008, monster_id = 20011001, pos = { x = 2424.342, y = 240.861, z = -401.850 }, rot = { x = 0.000, y = 289.066, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308002, gadget_id = 70211012, pos = { x = 2419.101, y = 240.876, z = -400.300 }, rot = { x = 0.293, y = 100.370, z = 0.068 }, level = 16, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
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
		monsters = { 308004, 308005, 308006, 308007, 308008 },
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
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end