@extends('crudbooster::admin_template')
@section('title', 'Translation ') @section('content')

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <link href="{{ asset('css/treeview.css') }}" rel="stylesheet">

</head>

<body>

<div class="container" style="margin:0">

    <div class="">

    <a class="btn btn-primary" href="{{url('modules/categories/add')}}">Add New</a>

        <div class="panel-body">

            <div class="row">

                <div class="col-md-12">


                    <ul id="tree1">

                        @foreach($categories as $category)

                            <li>
                            <img src="{{ $category->image }}" class="img-responsive img-thumbnail" style="width:100px;height:100px;display:inline">
                            <p style="display:inline;">{{ $category->name_en }} ({{count($category->childs)}})</p>

                            <a style="display:inline;float:right;color:#FFF;" class="click-cat btn btn-primary btn-sm" href="{{url('modules/categories/edit/'.$category->id)}}">Edit</a> 
                            <a style="display:inline;float:right;color:#FFF;" class="click-cat btn btn-danger btn-sm"   href="{{url('modules/categories/delete/'.$category->id)}}" {{(count($category->childs)>0) ? 'disabled':''}}>Delete</a>
                 
                            <a style="display:inline;float:right;color:#FFF;" class=" btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="getToSort({{$category->parent_id}})">Order</a>


                            @include('category.manageChild',['childs' => $category->childs->sortBy('sorting')])


                            </li>
                          

                        @endforeach

                    </ul>

                </div>

                


    </div>

</div>

<script src="{{ asset('js/treeview.js') }}"></script>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">{{__('Drag and Drop to reorder items')}}</h4>
      </div>
      <div class="modal-body">
        <table class="table table-striped table-bordered table-condensed db">
            <thead>
                <tr>
                <th>
                    Image
                </th>

                <th>
                    Name
                </th>
                </tr>
            </thead>
            <tbody class="append-tbody">
            </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




<script>

function getToSort(parent_id) {

    $.get("/modules/getToSort/"+parent_id, function(data){        
            $(".append-tbody").empty();
            data.data.forEach(element => {
                $(".append-tbody").append(`
                
                    <tr class="row1" data-id="`+element.id+`" parent-id="`+element.parent_id+`">
                        <td class="pl-3"><img src="`+element.image+`" class="img-responsive img-thumbnail" style="width:40x;height:40px;display:inline">
                        </td>
                        <td>`+element.name_en+`</td>

                    </tr>
                
                `);

            });

    });
}

</script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script type="text/javascript">
      $(function () {

        $( ".append-tbody" ).sortable({
          items: "tr",
          cursor: 'move',
          opacity: 0.6,
          update: function() {
              sendOrderToServer();
          }
        });

        function sendOrderToServer() {
          var order = [];
          var token = $('meta[name="csrf-token"]').attr('content');
          var parent_id=-1;
          $('tr.row1').each(function(index,element) {
            order.push({
              id: $(this).attr('data-id'),
              position: index+1
              
            });
            parent_id=$(this).attr('parent-id');
          });

          var data_request={
              order: order,
              _token: token,
              parent_id:parent_id
            };

          $.ajax({
            type: "POST", 
            dataType: "json", 
            url: "{{ url('post-sortable') }}",
            data: data_request,
            success: function(response) {
                if (response.status == "success") {
                  console.log(response);
                } else {
                  console.log(response);
                }
            }
          });
        }
      });
    </script>

@endsection