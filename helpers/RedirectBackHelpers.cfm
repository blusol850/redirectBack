<cfscript>

function redirectBack( howFarBack ) {
    param name="howFarBack" default=1;
    var moduleSettings = wirebox.getInstance( dsl = "coldbox:moduleSettings:redirectBack" );
    var flash = wirebox.getInstance( dsl = "coldbox:flash" );
    var backHistory = flash.get( moduleSettings.key, "" );
    arguments.event = backHistory[howFarBack];
    setNextEvent( argumentCollection = arguments );
}

</cfscript>
