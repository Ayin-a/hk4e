-- 基础信息
local base_info = {
	group_id = 144001004
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
	-- E琴键
	{ config_id = 4001, gadget_id = 70950096, pos = { x = 311.969, y = 119.563, z = 308.608 }, rot = { x = 358.462, y = 184.496, z = 351.359 }, level = 1, persistent = true, area_id = 102 },
	-- A琴键
	{ config_id = 4002, gadget_id = 70950096, pos = { x = 309.059, y = 119.644, z = 309.591 }, rot = { x = 0.000, y = 217.148, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- B琴键
	{ config_id = 4003, gadget_id = 70950096, pos = { x = 307.919, y = 119.699, z = 312.773 }, rot = { x = 1.365, y = 284.245, z = 5.509 }, level = 1, persistent = true, area_id = 102 },
	-- C琴键
	{ config_id = 4004, gadget_id = 70950096, pos = { x = 310.072, y = 119.592, z = 314.914 }, rot = { x = 0.000, y = 333.069, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	-- D琴键
	{ config_id = 4005, gadget_id = 70950096, pos = { x = 313.106, y = 119.511, z = 314.296 }, rot = { x = 0.719, y = 35.113, z = 1.551 }, level = 1, persistent = true, area_id = 102 },
	-- Pitch1-Indicator
	{ config_id = 4006, gadget_id = 70710124, pos = { x = 303.864, y = 120.000, z = 304.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch2-Indicator
	{ config_id = 4007, gadget_id = 70710125, pos = { x = 303.864, y = 120.000, z = 304.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch3-Indicator
	{ config_id = 4008, gadget_id = 70710126, pos = { x = 303.864, y = 120.000, z = 304.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch1-Indicator
	{ config_id = 4009, gadget_id = 70710124, pos = { x = 301.460, y = 120.000, z = 313.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch2-Indicator
	{ config_id = 4010, gadget_id = 70710125, pos = { x = 301.460, y = 120.000, z = 313.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch3-Indicator
	{ config_id = 4011, gadget_id = 70710126, pos = { x = 301.460, y = 120.000, z = 313.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch1-Indicator
	{ config_id = 4012, gadget_id = 70710124, pos = { x = 306.619, y = 120.000, z = 320.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch2-Indicator
	{ config_id = 4013, gadget_id = 70710125, pos = { x = 306.619, y = 120.000, z = 320.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch3-Indicator
	{ config_id = 4014, gadget_id = 70710126, pos = { x = 306.619, y = 120.000, z = 320.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch1-Indicator
	{ config_id = 4015, gadget_id = 70710124, pos = { x = 316.007, y = 120.000, z = 320.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch2-Indicator
	{ config_id = 4016, gadget_id = 70710125, pos = { x = 316.007, y = 120.000, z = 320.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch3-Indicator
	{ config_id = 4017, gadget_id = 70710126, pos = { x = 316.007, y = 120.000, z = 320.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch1-Indicator
	{ config_id = 4018, gadget_id = 70710124, pos = { x = 311.114, y = 120.000, z = 301.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch2-Indicator
	{ config_id = 4019, gadget_id = 70710125, pos = { x = 311.114, y = 120.000, z = 301.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	-- Pitch3-Indicator
	{ config_id = 4020, gadget_id = 70710126, pos = { x = 311.114, y = 120.000, z = 301.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 4052, gadget_id = 70211131, pos = { x = 303.526, y = 119.836, z = 313.704 }, rot = { x = 0.000, y = 105.256, z = 0.000 }, level = 16, drop_tag = "解谜超级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 4059, gadget_id = 70211121, pos = { x = 304.238, y = 119.860, z = 310.578 }, rot = { x = 0.000, y = 64.123, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 4060, gadget_id = 70211121, pos = { x = 305.922, y = 119.843, z = 316.339 }, rot = { x = 0.000, y = 150.145, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 踩踏A琴键播放水位1音效-错误音B
	{ config_id = 1004021, name = "GADGET_STATE_CHANGE_4021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4021", action = "action_EVENT_GADGET_STATE_CHANGE_4021", trigger_count = 0 },
	-- 踩踏A琴键播放水位2音效-正确音
	{ config_id = 1004022, name = "GADGET_STATE_CHANGE_4022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4022", action = "action_EVENT_GADGET_STATE_CHANGE_4022", trigger_count = 0 },
	-- 踩踏A琴键播放水位3音效-错误音A
	{ config_id = 1004023, name = "GADGET_STATE_CHANGE_4023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4023", action = "action_EVENT_GADGET_STATE_CHANGE_4023", trigger_count = 0 },
	-- 踩踏B琴键播放水位1音效-错误音B
	{ config_id = 1004025, name = "GADGET_STATE_CHANGE_4025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4025", action = "action_EVENT_GADGET_STATE_CHANGE_4025", trigger_count = 0 },
	-- 踩踏B琴键播放水位2音效-错误音A
	{ config_id = 1004026, name = "GADGET_STATE_CHANGE_4026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4026", action = "action_EVENT_GADGET_STATE_CHANGE_4026", trigger_count = 0 },
	-- 踩踏B琴键播放水位3音效-正确音
	{ config_id = 1004027, name = "GADGET_STATE_CHANGE_4027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4027", action = "action_EVENT_GADGET_STATE_CHANGE_4027", trigger_count = 0 },
	-- 踩踏C琴键播放水位1音效-正确音
	{ config_id = 1004029, name = "GADGET_STATE_CHANGE_4029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4029", action = "action_EVENT_GADGET_STATE_CHANGE_4029", trigger_count = 0 },
	-- 踩踏C琴键播放水位2音效-错误音B
	{ config_id = 1004030, name = "GADGET_STATE_CHANGE_4030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4030", action = "action_EVENT_GADGET_STATE_CHANGE_4030", trigger_count = 0 },
	-- 踩踏C琴键播放水位3音效-错误音A
	{ config_id = 1004031, name = "GADGET_STATE_CHANGE_4031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4031", action = "action_EVENT_GADGET_STATE_CHANGE_4031", trigger_count = 0 },
	-- 踩踏D琴键播放水位1音效-错误音B
	{ config_id = 1004033, name = "GADGET_STATE_CHANGE_4033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4033", action = "action_EVENT_GADGET_STATE_CHANGE_4033", trigger_count = 0 },
	-- 踩踏D琴键播放水位2音效-正确音
	{ config_id = 1004034, name = "GADGET_STATE_CHANGE_4034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4034", action = "action_EVENT_GADGET_STATE_CHANGE_4034", trigger_count = 0 },
	-- 踩踏D琴键播放水位3音效-错误音A
	{ config_id = 1004035, name = "GADGET_STATE_CHANGE_4035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4035", action = "action_EVENT_GADGET_STATE_CHANGE_4035", trigger_count = 0 },
	-- 踩踏E琴键播放水位1音效-错误音B
	{ config_id = 1004037, name = "GADGET_STATE_CHANGE_4037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4037", action = "action_EVENT_GADGET_STATE_CHANGE_4037", trigger_count = 0 },
	-- 踩踏E琴键播放水位2音效-错误音A
	{ config_id = 1004038, name = "GADGET_STATE_CHANGE_4038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4038", action = "action_EVENT_GADGET_STATE_CHANGE_4038", trigger_count = 0 },
	-- 踩踏E琴键播放水位3音效-正确音
	{ config_id = 1004039, name = "GADGET_STATE_CHANGE_4039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4039", action = "action_EVENT_GADGET_STATE_CHANGE_4039", trigger_count = 0 },
	-- A琴键被正确顺序激活-5
	{ config_id = 1004041, name = "GADGET_STATE_CHANGE_4041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4041", action = "action_EVENT_GADGET_STATE_CHANGE_4041", trigger_count = 0 },
	-- C琴键被正确顺序激活-2
	{ config_id = 1004043, name = "GADGET_STATE_CHANGE_4043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4043", action = "action_EVENT_GADGET_STATE_CHANGE_4043", trigger_count = 0 },
	-- D琴键被正确顺序激活-4
	{ config_id = 1004044, name = "GADGET_STATE_CHANGE_4044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4044", action = "action_EVENT_GADGET_STATE_CHANGE_4044", trigger_count = 0 },
	-- E琴键被正确顺序激活-3
	{ config_id = 1004045, name = "GADGET_STATE_CHANGE_4045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4045", action = "action_EVENT_GADGET_STATE_CHANGE_4045", trigger_count = 0 },
	-- t==1.c==0时重置
	{ config_id = 1004046, name = "VARIABLE_CHANGE_4046", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4046", action = "action_EVENT_VARIABLE_CHANGE_4046", trigger_count = 0 },
	-- t==2.c==1时重置
	{ config_id = 1004047, name = "VARIABLE_CHANGE_4047", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4047", action = "action_EVENT_VARIABLE_CHANGE_4047", trigger_count = 0 },
	-- t==3.c==2时重置
	{ config_id = 1004048, name = "VARIABLE_CHANGE_4048", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4048", action = "action_EVENT_VARIABLE_CHANGE_4048", trigger_count = 0 },
	-- t==4.c==3时重置
	{ config_id = 1004049, name = "VARIABLE_CHANGE_4049", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4049", action = "action_EVENT_VARIABLE_CHANGE_4049", trigger_count = 0 },
	-- t==5.c==4时重置
	{ config_id = 1004050, name = "VARIABLE_CHANGE_4050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4050", action = "action_EVENT_VARIABLE_CHANGE_4050", trigger_count = 0 },
	-- t==5.c==5时反馈正确结果
	{ config_id = 1004051, name = "VARIABLE_CHANGE_4051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4051", action = "action_EVENT_VARIABLE_CHANGE_4051", trigger_count = 0 },
	-- 踩踏E琴键给times加1
	{ config_id = 1004053, name = "GADGET_STATE_CHANGE_4053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4053", action = "action_EVENT_GADGET_STATE_CHANGE_4053", trigger_count = 0 },
	-- 踩踏A琴键给times加1
	{ config_id = 1004054, name = "GADGET_STATE_CHANGE_4054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4054", action = "action_EVENT_GADGET_STATE_CHANGE_4054", trigger_count = 0 },
	-- 踩踏B琴键（第一顺序琴键）且tune不正确则重置times和correct
	{ config_id = 1004055, name = "GADGET_STATE_CHANGE_4055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4055", action = "action_EVENT_GADGET_STATE_CHANGE_4055", trigger_count = 0 },
	-- 踩踏C琴键给times加1
	{ config_id = 1004056, name = "GADGET_STATE_CHANGE_4056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4056", action = "action_EVENT_GADGET_STATE_CHANGE_4056", trigger_count = 0 },
	-- 踩踏D琴键给times加1
	{ config_id = 1004057, name = "GADGET_STATE_CHANGE_4057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4057", action = "action_EVENT_GADGET_STATE_CHANGE_4057", trigger_count = 0 },
	{ config_id = 1004058, name = "TIMER_EVENT_4058", event = EventType.EVENT_TIMER_EVENT, source = "paimengkaiche", condition = "", action = "action_EVENT_TIMER_EVENT_4058" },
	-- 踩踏B琴键（第一顺序琴键）且tune不正确则重置times和correct
	{ config_id = 1004061, name = "GADGET_STATE_CHANGE_4061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4061", action = "action_EVENT_GADGET_STATE_CHANGE_4061", trigger_count = 0 },
	-- 踩踏B琴键（第一顺序琴键）且tune正确，更改times和correct
	{ config_id = 1004062, name = "GADGET_STATE_CHANGE_4062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4062", action = "action_EVENT_GADGET_STATE_CHANGE_4062", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "times", value = 0, no_refresh = false },
	{ config_id = 2, name = "correct", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1004024, name = "GADGET_STATE_CHANGE_4024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4024", action = "action_EVENT_GADGET_STATE_CHANGE_4024", trigger_count = 0 },
		{ config_id = 1004028, name = "GADGET_STATE_CHANGE_4028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4028", action = "action_EVENT_GADGET_STATE_CHANGE_4028", trigger_count = 0 },
		{ config_id = 1004032, name = "GADGET_STATE_CHANGE_4032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4032", action = "action_EVENT_GADGET_STATE_CHANGE_4032", trigger_count = 0 },
		{ config_id = 1004036, name = "GADGET_STATE_CHANGE_4036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4036", action = "action_EVENT_GADGET_STATE_CHANGE_4036", trigger_count = 0 },
		{ config_id = 1004040, name = "GADGET_STATE_CHANGE_4040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4040", action = "action_EVENT_GADGET_STATE_CHANGE_4040", trigger_count = 0 },
		{ config_id = 1004042, name = "GADGET_STATE_CHANGE_4042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4042", action = "action_EVENT_GADGET_STATE_CHANGE_4042", trigger_count = 0 }
	}
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
		monsters = { },
		gadgets = { 4001, 4002, 4003, 4004, 4005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4021", "GADGET_STATE_CHANGE_4022", "GADGET_STATE_CHANGE_4023", "GADGET_STATE_CHANGE_4025", "GADGET_STATE_CHANGE_4026", "GADGET_STATE_CHANGE_4027", "GADGET_STATE_CHANGE_4029", "GADGET_STATE_CHANGE_4030", "GADGET_STATE_CHANGE_4031", "GADGET_STATE_CHANGE_4033", "GADGET_STATE_CHANGE_4034", "GADGET_STATE_CHANGE_4035", "GADGET_STATE_CHANGE_4037", "GADGET_STATE_CHANGE_4038", "GADGET_STATE_CHANGE_4039", "GADGET_STATE_CHANGE_4041", "GADGET_STATE_CHANGE_4043", "GADGET_STATE_CHANGE_4044", "GADGET_STATE_CHANGE_4045", "VARIABLE_CHANGE_4046", "VARIABLE_CHANGE_4047", "VARIABLE_CHANGE_4048", "VARIABLE_CHANGE_4049", "VARIABLE_CHANGE_4050", "VARIABLE_CHANGE_4051", "GADGET_STATE_CHANGE_4053", "GADGET_STATE_CHANGE_4054", "GADGET_STATE_CHANGE_4055", "GADGET_STATE_CHANGE_4056", "GADGET_STATE_CHANGE_4057", "TIMER_EVENT_4058", "GADGET_STATE_CHANGE_4061", "GADGET_STATE_CHANGE_4062" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = A水潭的反馈效果,
		monsters = { },
		gadgets = { 4006, 4007, 4008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = B水潭的反馈效果,
		monsters = { },
		gadgets = { 4009, 4010, 4011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = C水潭的反馈效果,
		monsters = { },
		gadgets = { 4012, 4013, 4014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = D水潭的反馈效果,
		monsters = { },
		gadgets = { 4015, 4016, 4017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = E水潭的反馈效果,
		monsters = { },
		gadgets = { 4018, 4019, 4020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 全部弹奏正确的反馈,
		monsters = { },
		gadgets = { 4052, 4059, 4060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4021(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001001) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4021(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_False_B", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001001) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4022(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4023(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001001) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4023(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=215, y=196, z=158}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_05_False_A", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4025(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4025(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=188, y=213, z=309}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_01_False_B", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4026(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4026(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=188, y=213, z=309}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_01_False_A", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4027(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4027(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=188, y=213, z=309}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_01_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4029(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001006) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4029(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4030(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001006) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4030(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_False_B", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4031(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001006) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4031(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=230, y=187, z=434}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_02_False_A", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4033(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001007) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4033(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_False_B", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4034(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001007) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4034(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4035(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001007) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4035(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=356, y=183, z=420}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_04_False_A", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4037(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001008) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4037(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=311, y=119, z=311}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_03_False_B", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4038(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001008) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4038(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=311, y=119, z=311}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_03_False_A", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4039(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001008) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4039(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=311, y=119, z=311}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Tone_03_True", play_type= 1, is_broadcast = true }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4041(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001001) ~= 2 then
			return false
	end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4041(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4043(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001006) ~= 3 then
			return false
	end
	
	-- 判断变量"times"为1
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4043(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4044(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001007) ~= 2 then
			return false
	end
	
	-- 判断变量"times"为3
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4044(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4045(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001008) ~= 1 then
			return false
	end
	
	-- 判断变量"times"为2
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4045(context, evt)
	-- 针对当前group内变量名为 "correct" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4046(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为1
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 1 then
			return false
	end
	
	-- 判断变量"correct"为0
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4046(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为2
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 2 then
			return false
	end
	
	-- 判断变量"correct"为1
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4047(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为3
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 3 then
			return false
	end
	
	-- 判断变量"correct"为2
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4048(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为4
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 4 then
			return false
	end
	
	-- 判断变量"correct"为3
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4049(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为5
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 5 then
			return false
	end
	
	-- 判断变量"correct"为4
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4050(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"times"为5
	if ScriptLib.GetGroupVariableValue(context, "times") ~= 5 then
			return false
	end
	
	-- 判断变量"correct"为5
	if ScriptLib.GetGroupVariableValue(context, "correct") ~= 5 then
			return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4051(context, evt)
	-- 创建id为4052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为4059的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4059 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为4060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4060 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "times" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "correct" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知场景上的所有玩家播放名字为144001011 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 144001011, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=271, y=214, z=304}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "YinLvDao_Phrase_Complate", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 延迟18秒后,向groupId为：144001004的对象,请求一次调用,并将string参数："paimengkaiche" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001004, "paimengkaiche", 18) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4053(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4053(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4054(context, evt)
	if 4002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4054(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4055(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4055(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4056(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4056(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4057(context, evt)
	if 4005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4057(context, evt)
	-- 针对当前group内变量名为 "times" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_4058(context, evt)
	-- 调用提示id为 1110240 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110240) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4061(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4061(context, evt)
	-- 变量"times"赋值为0
	ScriptLib.SetGroupVariableValue(context, "times", 0)
	
	-- 变量"correct"赋值为0
	ScriptLib.SetGroupVariableValue(context, "correct", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4062(context, evt)
	if 4003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"tune"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "tune", 144001009) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4062(context, evt)
	-- 将本组内变量名为 "times" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "times", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "correct" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "correct", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end