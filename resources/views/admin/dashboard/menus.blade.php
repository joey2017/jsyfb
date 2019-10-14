<style>
    .dashmenu {
        margin-top: 15px;
        padding: 0px 15px 0 0
    }

    .dashmenu a {
        display: block;
        height: 150px;
        padding: 5px 20px;
        color: #fff;
        font-size: 16px;
        text-align: left;
        line-height: 150px;
        background-color: /*#d693d4*/#77b9e4
    }

    .dashmenu a i {
        font-size: 50px;
        margin-right: 20px;
    }
</style>
<div class="box box-default">
    <!-- /.box-header -->
    <div class="box-body">
        <div class="table-responsive">
            @foreach($menus as $menu)
                <div class="col-sm-4 col-md-4 dashmenu">
                    <a href="{{ admin_url($menu->uri) }}" class="text-center">
                        <i class="iconfont {{ $menu->icon }}"></i> {{ $menu->title }}
                    </a>
                </div>
            @endforeach
        </div>
        <!-- /.table-responsive -->
    </div>
    <!-- /.box-body -->
</div>