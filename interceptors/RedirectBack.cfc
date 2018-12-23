component extends="coldbox.system.Interceptor" {

    function configure() {}

    function postProcess( event, interceptData, buffer, rc, prc ) {
        var flash = wirebox.getInstance( dsl = "coldbox:flash" );
        var moduleSettings = wirebox.getInstance( dsl = "coldbox:moduleSettings:redirectBack" );

        if ( ! event.isAjax() ) {
            r = flash.get( moduleSettings.key, [] );
            if( ! isArray(r) ){
                r = [r];
            } elseif( arrayLen(r) == 5){
                arrayDeleteAt(r,5);
            }   
            flash.put(
                name = moduleSettings.key,
                value = event.isSES() ? r.prepend( event.getCurrentRoutedUrl() ) : r.prepend( event.getCurrentEvent() ),
                autoPurge = false
            );
        }

        
    }

}
