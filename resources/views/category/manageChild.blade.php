<ul>

    @foreach($childs as $child)

        <li>
        <img src="{{ $child->image }}" class="img-responsive img-thumbnail" style="width:100px;height:100px;display:inline">

            <p style="display:inline">{{ $child->name_en }} ({{count($child->childs)}})</p>
        

            <a style="display:inline;float:right;color:#FFF;" class="click-cat btn btn-primary btn-sm" href="{{url('modules/categories/edit/'.$child->id)}}">Edit</a> 
            <a style="display:inline;float:right;color:#FFF;" class="click-cat btn btn-danger btn-sm"   href="{{url('modules/categories/delete/'.$child->id)}}" {{(count($child->childs)>0) ? 'disabled':''}}>Delete</a>
            <a style="display:inline;float:right;color:#FFF;" class=" btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="getToSort({{$child->parent_id}})">Order</a>


            @include('category.manageChild',['childs' => $child->childs->sortBy('sorting')])

        </li>

    @endforeach
<!-- Modal -->


</ul>