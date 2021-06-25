@foreach($row->dets  as $row)
<tr id="trow_{{ $row->id }}">
     <td><strong>{{  $row->name }}</strong></td>
       <td>
        <a class="btn btn-default btn-rounded btn-sm modal-trigger" href="#modal{{ $row->id}}" ><span class="fa fa-pencil"></span></a>
  <!--        <button class="btn btn-danger btn-rounded btn-sm" onClick="delete_row('trow_{{ $row->id }}');"><span class="fa fa-times"></span></button>-->
        {!! Form::open(['action'=>['DetailsController@destroy',$row->id],'method'=>'delete' ,'style'=>'display: inline']) !!}
        <button type="submit" class="btn btn-danger red" onclick='return confirm("Are You sure!!")' ><span class="fa fa-times"></span></button>
        {!! Form::close() !!}
    </td>
<div id="modal{{ $row->id }}" class="modal">
    <div class="modal-content">
        <div class="message" >
        </div>
        {!! Form:: model($row,array('method' => 'PUT','action' => ['DetailsController@update',$row->id], 'files'=>true,'class' => 'update-ajax-form-request')) !!}
        <div class="card">
            <div class="card-content">
                <div class="row">
                     <div class="input-field col s10">
                        {!!Form::text('name', null,array('class'=>'validate','id'=>'name','steps'=>'any'))!!}
                        <label for="name">Offer Properity</label>
                        <label class="error">{{ $errors->first('name') }}</label>
                    </div>
                    <button class="btn-floating btn-large waves-effect waves-light green" type="submit"><i class="material-icons">mode_edit</i></button>
                </div></div>
        </div>
        {!! Form::close() !!}
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Close</a>
    </div>
</div>
</tr>
@endforeach