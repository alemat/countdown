$(function (){
    $('.wysihtml5').wysihtml5({'toolbar': {'blockquote': false, 'html': true}});
    $(".button-collapse").sideNav();

        var container = document.querySelector('.custom-scrollbar');
        Ps.initialize(container, {
            wheelSpeed: 2,
            wheelPropagation: true,
            minScrollbarLength: 20
        });

        $(document).ready(function() {
            $('#datatables').DataTable();
        });

        $(document).ready(function () {
            $('select[name="datatables_length"]').material_select();
        });

})