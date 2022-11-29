-- 基础信息
local base_info = {
	group_id = 133213017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21030201, pos = { x = -3526.683, y = 200.690, z = -3032.825 }, rot = { x = 352.611, y = 0.391, z = 353.945 }, level = 27, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 17004, monster_id = 21010601, pos = { x = -3523.837, y = 200.262, z = -3031.827 }, rot = { x = 352.611, y = 249.185, z = 353.945 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 12 },
	{ config_id = 17005, monster_id = 21010501, pos = { x = -3529.076, y = 200.415, z = -3031.250 }, rot = { x = 9.457, y = 74.220, z = 1.273 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 12 },
	{ config_id = 17009, monster_id = 21011001, pos = { x = -3532.687, y = 201.213, z = -3036.241 }, rot = { x = 347.924, y = 203.722, z = 3.336 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 12 },
	{ config_id = 17014, monster_id = 21020101, pos = { x = -3536.327, y = 200.344, z = -3028.863 }, rot = { x = 1.732, y = 83.235, z = 6.969 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211002, pos = { x = -3525.998, y = 200.354, z = -3036.155 }, rot = { x = 359.102, y = 359.944, z = 357.317 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 17006, gadget_id = 70220013, pos = { x = -3524.241, y = 200.333, z = -3044.098 }, rot = { x = 0.000, y = 333.635, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 17007, gadget_id = 70220013, pos = { x = -3526.177, y = 200.486, z = -3041.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 17008, gadget_id = 70220013, pos = { x = -3539.521, y = 200.274, z = -3028.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 17010, gadget_id = 70310004, pos = { x = -3525.660, y = 200.245, z = -3028.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 17011, gadget_id = 70220014, pos = { x = -3524.549, y = 200.317, z = -3042.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 17012, gadget_id = 70220014, pos = { x = -3537.820, y = 200.528, z = -3030.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 17013, gadget_id = 70220043, pos = { x = -3537.846, y = 200.202, z = -3027.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" }
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
		monsters = { 17001, 17004, 17005, 17009, 17014 },
		gadgets = { 17002, 17006, 17007, 17008, 17010, 17011, 17012, 17013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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