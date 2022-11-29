
local stateChain={
	{0101,0102,0103,0104,0105,0106,0107,0108,0109},
	{0201,0202,0203,0204,0205,0206,0207,0208,0209},
	{0301,0302,0303,0304,0305,0306,0307,0308,0309},
	{0401,0402,0403,0404,0,0406,0407,0408,0409},	
	{0501,0502,0503,0504,0505,0506,0507,0508,0509},
}

function OnClientExecuteReq(context, param1, param2, param3)
	local gadgetState=ScriptLib.GetGadgetStateByConfigId(context, ScriptLib.GetContextGroupId(context),ScriptLib.GetContextGadgetConfigId(context))
	for i=1,#stateChain do
		for j=1,#stateChain[i] do
			if gadgetState==stateChain[i][j] then
				if i+param1>0 and i+param1<=#stateChain and j+param2>0 and j+param2 <=#stateChain[i] then
					ScriptLib.SetGadgetState(context, stateChain[i+param1][j+param2])
					break
				end
			end
		end
	end
	return 0
end