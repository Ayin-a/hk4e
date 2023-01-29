-- 基础信息
local base_info = {
	group_id = 220000026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66, gadget_id = 70500001, pos = { x = 70.450, y = 30.519, z = 116.557 }, rot = { x = 0.000, y = 25.548, z = 0.000 }, level = 1, point_type = 2019, isOneoff = true },
	{ config_id = 67, gadget_id = 70211011, pos = { x = 66.081, y = 9.423, z = 121.093 }, rot = { x = 0.000, y = 172.247, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000048, name = "GATHER_48", event = EventType.EVENT_GATHER, source = "66", condition = "", action = "action_EVENT_GATHER_48", forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 66 },
		regions = { },
		triggers = { "GATHER_48" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GATHER_48(context, evt)
	-- 创建id为67的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 67 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end