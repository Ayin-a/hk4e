--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	DarkPressure  黑夜压力分区
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	用于向服务器发送当前玩家缩在的黑夜压力区域
||	LogName       ||    /
||	Protection    ||	/
=====================================================================================================================


=======================================================================================]]

--local DarkLevel = 0 



local extrTriggers = {
	initialtrigger = {
		["In_Region"] = { config_id = 80000001, name = "In_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_PlayerInRegion", trigger_count = 0, forbid_guest = false },
	}
}


function action_PlayerInRegion( context,evt )

	if evt.param1 ~= regionID then
		return 0
	end
	
	--根据LD在group中填写的数值设置当前区域等级
	ScriptLib.PrintContextLog(context, "## DK_LOG : Set SetDarkPressureLevel To "..DarkLevel)
	ScriptLib.SetDarkPressureLevel(context, DarkLevel)

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()
