-- 基础信息
local base_info = {
	group_id = 133307037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 23010501, pos = { x = -2014.358, y = 1.034, z = 5611.940 }, rot = { x = 0.000, y = 89.716, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 27 },
	{ config_id = 37004, monster_id = 25210403, pos = { x = -2010.570, y = 0.770, z = 5613.521 }, rot = { x = 0.000, y = 214.655, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 37005, monster_id = 23010401, pos = { x = -2000.474, y = 1.747, z = 5603.460 }, rot = { x = 0.000, y = 122.259, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9012, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211012, pos = { x = -2021.846, y = 1.531, z = 5600.196 }, rot = { x = 4.579, y = 100.625, z = 348.547 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 37006, gadget_id = 70220048, pos = { x = -2021.158, y = 3.396, z = 5615.454 }, rot = { x = 344.972, y = 2.307, z = 342.644 }, level = 32, area_id = 27 },
	{ config_id = 37007, gadget_id = 70220048, pos = { x = -2018.713, y = 0.792, z = 5604.712 }, rot = { x = 353.958, y = 0.592, z = 341.069 }, level = 32, area_id = 27 },
	{ config_id = 37008, gadget_id = 70220048, pos = { x = -2005.954, y = 2.165, z = 5616.914 }, rot = { x = 340.124, y = 356.399, z = 12.015 }, level = 32, area_id = 27 },
	{ config_id = 37011, gadget_id = 70330396, pos = { x = -2021.832, y = 0.571, z = 5597.430 }, rot = { x = 347.604, y = 0.747, z = 356.066 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 37012, gadget_id = 70330396, pos = { x = -2012.679, y = 2.258, z = 5621.716 }, rot = { x = 351.124, y = 0.139, z = 358.210 }, level = 32, state = GadgetState.GearStart, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037003, name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003" }
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
		monsters = { 37001, 37004, 37005 },
		gadgets = { 37002, 37006, 37007, 37008, 37011, 37012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
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