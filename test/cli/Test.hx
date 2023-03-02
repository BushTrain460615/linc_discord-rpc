
import discord_rpc.DiscordRpc;

class Test
{       
    static function main()
    {
        DiscordRpc.start({
            clientID : "378534231036395521",
            onReady  : onReady,
            onError  : onError,
            onDisconnected : onDisconnected
        });

        while (true)
        {
            DiscordRpc.process();
        }

        DiscordRpc.shutdown();
    }

    static function onReady()
    {
        DiscordRpc.presence({
            details : 'Bushs Haxe Discord RPC Test App',
            state   : 'Testing to see if the download button works',
            largeImageKey  : 'logo_haxe',
            largeImageText : 'Haxe',
            download : 'https://github.com/BushTrain460615/linc_discord-rpc-bush'
        });
    }

    static function onError(_code : Int, _message : String)
    {
        trace('Error! $_code : $_message');
    }

    static function onDisconnected(_code : Int, _message : String)
    {
        trace('Disconnected! $_code : $_message');
    }
}
