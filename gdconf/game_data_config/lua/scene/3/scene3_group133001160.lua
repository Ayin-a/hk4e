-- 基础信息
local base_info = {
	group_id = 133001160
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 160001, monster_id = 21010701, pos = { x = 1761.170, y = 214.323, z = -1373.094 }, rot = { x = 0.000, y = 180.224, z = 0.000 }, level = 6, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 160004, monster_id = 21010401, pos = { x = 1763.024, y = 214.364, z = -1378.215 }, rot = { x = 0.000, y = 79.676, z = 0.000 }, level = 6, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 160005, monster_id = 21010101, pos = { x = 1758.515, y = 214.350, z = -1375.736 }, rot = { x = 0.000, y = 115.395, z = 0.000 }, level = 6, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 2 },
	{ config_id = 160006, monster_id = 21010101, pos = { x = 1758.440, y = 214.434, z = -1379.829 }, rot = { x = 0.000, y = 208.784, z = 0.000 }, level = 6, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 160002, gadget_id = 70211012, pos = { x = 1749.549, y = 214.920, z = -1375.377 }, rot = { x = 0.889, y = 96.609, z = 0.103 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 160007, gadget_id = 70220010, pos = { x = 1761.143, y = 214.513, z = -1380.267 }, rot = { x = 0.000, y = 136.121, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 160008, gadget_id = 70310006, pos = { x = 1760.662, y = 214.325, z = -1375.977 }, rot = { x = 0.000, y = 152.079, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 160009, gadget_id = 70220010, pos = { x = 1750.070, y = 214.998, z = -1370.669 }, rot = { x = 0.000, y = 136.121, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1160003, name = "ANY_MONSTER_DIE_160003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_160003", action = "action_EVENT_ANY_MONSTER_DIE_160003" }
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
		monsters = { 160001, 160004, 160005, 160006 },
		gadgets = { 160002, 160007, 160008, 160009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_160003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_160003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_160003(context, evt)
	-- 将configid为 160002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 160002, GadgetState.Default) then
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