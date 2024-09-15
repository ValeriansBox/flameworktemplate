import { Controller, OnStart } from "@flamework/core";


@Controller()
export class MyController implements OnStart {
	onStart() 
    {
		print("My placeholder controller!");
	}
}