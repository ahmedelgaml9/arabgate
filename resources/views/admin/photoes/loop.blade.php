@foreach($rows  as $row)
<tr id="trow_{{ $row->id }}">
    <td class="text-center">{{ $row->id }}</td>
    <td><img src="{{  asset('admin-assets/images/photo/'.$row->photo) }}" width="100" height="70"/></strong></td>
 
<td>
    <a class="btn btn-default btn-rounded btn-sm" href="{{ url('controll/photoes/'.$row->id.'/edit') }}" ><span class="fa fa-pencil"></span></a>
  </td>
</tr>
@endforeach