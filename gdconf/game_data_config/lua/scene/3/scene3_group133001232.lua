-- 基础信息
local base_info = {
	group_id = 133001232
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232010, monster_id = 21030201, pos = { x = 1512.583, y = 292.418, z = -1213.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘萨满", disableWander = true, area_id = 2 },
	{ config_id = 232011, monster_id = 21020201, pos = { x = 1511.883, y = 291.704, z = -1206.856 }, rot = { x = 0.000, y = 127.999, z = 0.000 }, level = 9, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 2 },
	{ config_id = 232012, monster_id = 21010301, pos = { x = 1516.499, y = 292.667, z = -1209.992 }, rot = { x = 0.000, y = 187.306, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 232001, gadget_id = 70900019, pos = { x = 1512.737, y = 291.992, z = -1202.724 }, rot = { x = 0.000, y = 237.505, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 232002, gadget_id = 70211012, pos = { x = 1513.794, y = 292.156, z = -1204.583 }, rot = { x = 0.395, y = 156.510, z = 345.503 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 232004, gadget_id = 70220013, pos = { x = 1520.154, y = 293.185, z = -1207.641 }, rot = { x = 0.000, y = 346.859, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 232005, gadget_id = 70220014, pos = { x = 1519.099, y = 293.178, z = -1206.139 }, rot = { x = 0.000, y = 70.864, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 232006, gadget_id = 70220013, pos = { x = 1505.679, y = 291.812, z = -1208.905 }, rot = { x = 352.940, y = 328.105, z = 348.828 }, level = 10, area_id = 2 },
	{ config_id = 232007, gadget_id = 70220014, pos = { x = 1510.218, y = 292.187, z = -1214.910 }, rot = { x = 350.482, y = 122.363, z = 3.400 }, level = 10, area_id = 2 },
	{ config_id = 232008, gadget_id = 70220013, pos = { x = 1505.240, y = 292.143, z = -1212.872 }, rot = { x = 359.902, y = 164.811, z = 16.273 }, level = 10, area_id = 2 },
	{ config_id = 232009, gadget_id = 70220005, pos = { x = 1511.127, y = 292.376, z = -1215.181 }, rot = { x = 0.000, y = 282.432, z = 0.000 }, level = 10, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232003, name = "ANY_MONSTER_DIE_232003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232003", action = "action_EVENT_ANY_MONSTER_DIE_232003" }
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
		monsters = { 232010, 232011, 232012 },
		gadgets = { 232001, 232002, 232004, 232005, 232006, 232007, 232008, 232009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_232003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232003(context, evt)
	-- 将configid为 232002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 232002, GadgetState.Default) then
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