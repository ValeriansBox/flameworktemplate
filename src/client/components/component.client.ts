import { BaseComponent, Component } from "@flamework/components";
import { OnStart } from "@flamework/core";

@Component({tag: "ClientComponent"})
export class ClientComponent extends BaseComponent implements OnStart 
{
    onStart()
    {
        print("my placeholder client component!");
    }
}