@foreach($rows  as $row)
<tr id="trow_{{ $row->id }}">
    <td class="text-center">{{ $row->id }}</td>
    <td><img src="{{  asset('admin-assets/images/projects/'.$row->photo) }}" width="100" height="70"/></strong></td>
<td><strong>{{  $row->name }}</strong></td>
 
 
<td>
    <a class="btn btn-default btn-rounded btn-sm" href="{{ url('controll/benefits/'.$row->id.'/edit') }}" ><span class="fa fa-pencil"></span></a>
<!--        <button class="btn btn-danger btn-rounded btn-sm" onClick="delete_row('trow_{{ $row->id }}');"><span class="fa fa-times"></span></button>-->
    {!! Form::open(['action'=>['ProjectbenefitsController@destroy',$row->id],'method'=>'delete' ,'style'=>'display: inline']) !!}
    <button type="submit"  class="btn btn-danger red " onclick='return confirm("Are You sure!!")' ><span class="fa fa-times"></span></button>
    {!! Form::close() !!}

</td>
</tr>
@endforeach