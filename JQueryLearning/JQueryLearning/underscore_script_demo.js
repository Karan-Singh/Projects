$(function () {
    //_.each([1, 2, 3], console.log);
    //console.log(_.contains([1, 2, 3], 3));
    //console.log(_.uniq([1, 2, 1, 3, 1, 4]));

    var ctlTemplate = _.template('<div style="width: <%- Width %>px; height: <%- Height%>px; border:2px solid red;">Sample Info..</div>');
    //console.log(ctlTemplate({ Width: '200', Height: '300' }));
        $('#dvSample').html(ctlTemplate({ Height: '200', Width: '200' }));    
});

