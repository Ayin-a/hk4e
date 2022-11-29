-- 基础信息
local base_info = {
	group_id = 133103128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 21030601, pos = { x = -140.166, y = 326.677, z = 1850.056 }, rot = { x = 0.000, y = 74.749, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 128004, monster_id = 21030401, pos = { x = -132.921, y = 326.498, z = 1851.977 }, rot = { x = 0.000, y = 259.352, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 128005, monster_id = 21020301, pos = { x = -137.873, y = 327.019, z = 1855.054 }, rot = { x = 0.000, y = 166.850, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 },
	{ config_id = 128006, monster_id = 21010501, pos = { x = -126.896, y = 330.958, z = 1847.740 }, rot = { x = 0.000, y = 272.212, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 128002, gadget_id = 70211012, pos = { x = -136.818, y = 326.914, z = 1851.027 }, rot = { x = 359.694, y = 169.714, z = 0.029 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128003, name = "ANY_MONSTER_DIE_128003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_128003", action = "action_EVENT_ANY_MONSTER_DIE_128003" }
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
		monsters = { 128001, 128004, 128005, 128006 },
		gadgets = { 128002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_128003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_128003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_128003(context, evt)
	-- 将configid为 128002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.Default) then
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