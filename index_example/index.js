function(meta) {
    if(meta['onedata_json'] && meta['onedata_json']['category']) {
        return meta['onedata_json']['category'];
    }
    return null;
}