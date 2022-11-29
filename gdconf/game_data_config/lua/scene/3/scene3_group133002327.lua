-- 基础信息
local base_info = {
	group_id = 133002327
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 327001, monster_id = 21010201, pos = { x = 1681.578, y = 275.803, z = -9.011 }, rot = { x = 348.860, y = 358.819, z = 12.066 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 327004, monster_id = 21030301, pos = { x = 1681.022, y = 276.842, z = -4.579 }, rot = { x = 0.000, y = 203.960, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", area_id = 5 },
	{ config_id = 327005, monster_id = 21010201, pos = { x = 1679.456, y = 275.663, z = -7.989 }, rot = { x = 348.860, y = 84.577, z = 12.066 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 327012, monster_id = 21010401, pos = { x = 1674.785, y = 275.137, z = -5.237 }, rot = { x = 14.942, y = 265.740, z = 9.222 }, level = 16, drop_tag = "远程丘丘人", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 327002, gadget_id = 70211012, pos = { x = 1683.160, y = 277.308, z = -4.718 }, rot = { x = 19.382, y = 217.368, z = 358.682 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 327007, gadget_id = 70220005, pos = { x = 1682.425, y = 277.528, z = -3.169 }, rot = { x = 346.911, y = 358.516, z = 12.886 }, level = 16, area_id = 5 },
	{ config_id = 327008, gadget_id = 70310006, pos = { x = 1680.663, y = 275.971, z = -7.706 }, rot = { x = 344.838, y = 358.468, z = 11.471 }, level = 16, area_id = 5 },
	{ config_id = 327009, gadget_id = 70220013, pos = { x = 1682.062, y = 278.006, z = -0.856 }, rot = { x = 346.272, y = 358.266, z = 14.329 }, level = 16, area_id = 5 },
	{ config_id = 327010, gadget_id = 70220013, pos = { x = 1679.433, y = 277.532, z = -0.282 }, rot = { x = 346.911, y = 358.516, z = 12.886 }, level = 16, area_id = 5 },
	{ config_id = 327014, gadget_id = 70300088, pos = { x = 1669.377, y = 273.615, z = -6.040 }, rot = { x = 349.705, y = 346.842, z = 14.232 }, level = 16, area_id = 5 },
	{ config_id = 327015, gadget_id = 70300089, pos = { x = 1679.713, y = 275.203, z = -9.788 }, rot = { x = 344.838, y = 358.468, z = 11.471 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1327003, name = "ANY_MONSTER_DIE_327003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_327003", action = "action_EVENT_ANY_MONSTER_DIE_327003" }
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
		monsters = { 327001, 327004, 327012 },
		gadgets = { 327002, 327007, 327008, 327009, 327010, 327014, 327015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_327003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_327003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_327003(context, evt)
	-- 将configid为 327002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327002, GadgetState.Default) then
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