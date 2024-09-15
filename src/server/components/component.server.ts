import { BaseComponent, Component } from "@flamework/components";
import { OnInit, OnStart } from "@flamework/core";

@Component({tag: "ServerComponent"})
export class ServerComponent extends BaseComponent implements OnStart 
{
    onStart()
    {
        print("my placeholder server component!");
    }
}