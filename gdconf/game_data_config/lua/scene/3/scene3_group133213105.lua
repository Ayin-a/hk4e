-- 基础信息
local base_info = {
	group_id = 133213105
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
	{ config_id = 105001, gadget_id = 70290071, pos = { x = -3333.318, y = 233.689, z = -3261.204 }, rot = { x = 0.000, y = 286.429, z = 0.000 }, level = 34, isOneoff = true, persistent = true, area_id = 12 },
	{ config_id = 105003, gadget_id = 70290111, pos = { x = -3333.318, y = 233.689, z = -3261.204 }, rot = { x = 0.000, y = 286.429, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 105002, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3333.318, y = 233.689, z = -3261.204 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1105002, name = "ENTER_REGION_105002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_105002" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { 105003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 105001 },
		regions = { 105002 },
		triggers = { "ENTER_REGION_105002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_105002(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end