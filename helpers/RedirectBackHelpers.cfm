<cfscript>

function redirectBack() {
    param name="arguments.howFarBack" default=1;
    var moduleSettings = wirebox.getInstance( dsl = "coldbox:moduleSettings:redirectBack" );
    var flash = wirebox.getInstance( dsl = "coldbox:flash" );
    var backHistory = flash.get( moduleSettings.key, "" );
    arguments.event = backHistory[arguments.howFarBack];
    structDelete( arguments, "howFarBack" );
    relocate( argumentCollection = arguments );
}

</cfscript>
