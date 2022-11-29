-- 基础信息
local base_info = {
	group_id = 133102740
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 740001, monster_id = 21010901, pos = { x = 1232.884, y = 200.860, z = 145.540 }, rot = { x = 0.000, y = 8.111, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 740013, monster_id = 21030101, pos = { x = 1224.557, y = 201.044, z = 138.320 }, rot = { x = 0.000, y = 16.844, z = 0.000 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 5 },
	{ config_id = 740014, monster_id = 20011001, pos = { x = 1225.179, y = 201.445, z = 140.236 }, rot = { x = 0.000, y = 84.738, z = 0.000 }, level = 16, drop_tag = "史莱姆", pose_id = 901, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 740002, gadget_id = 70211012, pos = { x = 1233.349, y = 200.198, z = 141.795 }, rot = { x = 355.206, y = 262.054, z = 357.967 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 740004, gadget_id = 70300081, pos = { x = 1227.000, y = 200.096, z = 129.537 }, rot = { x = 0.000, y = 71.935, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 740005, gadget_id = 70300081, pos = { x = 1221.655, y = 199.679, z = 151.202 }, rot = { x = 0.000, y = 247.877, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 740006, gadget_id = 70300081, pos = { x = 1211.143, y = 199.614, z = 130.261 }, rot = { x = 355.250, y = 259.765, z = 1.936 }, level = 16, area_id = 5 },
	{ config_id = 740007, gadget_id = 70220013, pos = { x = 1216.712, y = 200.321, z = 144.499 }, rot = { x = 2.090, y = 22.406, z = 6.638 }, level = 16, area_id = 5 },
	{ config_id = 740008, gadget_id = 70220013, pos = { x = 1217.638, y = 200.640, z = 141.789 }, rot = { x = 4.009, y = 240.393, z = 352.629 }, level = 16, area_id = 5 },
	{ config_id = 740011, gadget_id = 70300087, pos = { x = 1225.190, y = 200.978, z = 140.212 }, rot = { x = 356.434, y = 0.139, z = 355.533 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1740003, name = "ANY_MONSTER_DIE_740003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_740003", action = "action_EVENT_ANY_MONSTER_DIE_740003" }
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
		monsters = { 740001, 740013, 740014 },
		gadgets = { 740002, 740004, 740005, 740006, 740007, 740008, 740011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_740003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_740003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_740003(context, evt)
	-- 将configid为 740002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 740002, GadgetState.Default) then
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