-- 基础信息
local base_info = {
	group_id = 144001174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174001, monster_id = 21010201, pos = { x = -212.741, y = 120.892, z = -81.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 174004, monster_id = 21010401, pos = { x = -209.732, y = 120.508, z = -79.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 101 },
	{ config_id = 174005, monster_id = 21030301, pos = { x = -212.418, y = 120.892, z = -55.387 }, rot = { x = 0.000, y = 155.638, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 103 },
	{ config_id = 174006, monster_id = 21030301, pos = { x = -215.667, y = 120.892, z = -55.642 }, rot = { x = 0.000, y = 133.475, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 103 },
	{ config_id = 174007, monster_id = 22010301, pos = { x = -208.162, y = 120.000, z = -71.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 101 },
	{ config_id = 174008, monster_id = 21011001, pos = { x = -220.361, y = 125.487, z = -53.796 }, rot = { x = 0.000, y = 152.800, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 103 },
	{ config_id = 174009, monster_id = 21011001, pos = { x = -214.264, y = 120.840, z = -51.389 }, rot = { x = 0.000, y = 184.450, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 103 },
	{ config_id = 174010, monster_id = 21010901, pos = { x = -203.356, y = 125.625, z = -84.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 32, area_id = 101 },
	{ config_id = 174011, monster_id = 21010901, pos = { x = -210.655, y = 120.855, z = -85.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 32, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 174002, gadget_id = 70211012, pos = { x = -204.386, y = 125.561, z = -83.357 }, rot = { x = 0.000, y = 276.531, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 174012, gadget_id = 70300089, pos = { x = -211.986, y = 122.069, z = -42.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 174013, gadget_id = 70300089, pos = { x = -214.031, y = 122.141, z = -40.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 174014, gadget_id = 70310006, pos = { x = -218.136, y = 122.160, z = -40.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 174015, gadget_id = 70220013, pos = { x = -222.236, y = 122.137, z = -44.094 }, rot = { x = 0.000, y = 330.550, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 174016, gadget_id = 70300088, pos = { x = -209.196, y = 122.142, z = -97.059 }, rot = { x = 0.000, y = 257.050, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 174017, gadget_id = 70300088, pos = { x = -207.064, y = 122.098, z = -96.569 }, rot = { x = 0.000, y = 257.050, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 174018, gadget_id = 70220026, pos = { x = -205.246, y = 122.199, z = -97.697 }, rot = { x = 0.000, y = 336.416, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 174019, gadget_id = 70220026, pos = { x = -202.407, y = 122.138, z = -91.614 }, rot = { x = 0.000, y = 19.977, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 174020, gadget_id = 70310009, pos = { x = -212.998, y = 122.057, z = -93.506 }, rot = { x = 0.000, y = 30.700, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 174021, gadget_id = 70300089, pos = { x = -211.241, y = 120.856, z = -48.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174003, name = "ANY_MONSTER_DIE_174003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174003", action = "action_EVENT_ANY_MONSTER_DIE_174003" }
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
		monsters = { 174001, 174004, 174005, 174006, 174007, 174008, 174009, 174010, 174011 },
		gadgets = { 174002, 174012, 174013, 174014, 174015, 174016, 174017, 174018, 174019, 174020, 174021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_174003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174003(context, evt)
	-- 将configid为 174002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174002, GadgetState.Default) then
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