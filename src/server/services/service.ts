import { OnStart, Service} from "@flamework/core";

@Service()
export class MyService implements OnStart {
	onStart() 
    {
		print("My placeholder service!");
	}
}