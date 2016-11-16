function(meta) {
    if(meta['onedata_json'] && meta['onedata_json']['geometry']) {
        return meta['onedata_json']['geometry'];
    }
    return null;
}
