@extends('admin.dashboard')
@section('content')
<a class="btn-floating btn-large waves-effect waves-light red waves-light btn modal-trigger"  href="{{ url('admin/slider/create') }}"><i class="material-icons">add</i></a>
<div class="card invoices-card">
    <div class="card-content">

        <span class="card-title">Our Pages</span>
        <table class="responsive-table bordered">
            <thead>
                <tr>
                    <th data-field="id">#</th>
                    <th data-field="company">Page Name</th>
                    <th data-field="progress">Actions</th>
                </tr>
            </thead>
            <tbody class="data">
                @foreach($rows  as $row)
                <tr id="trow_{{ $row->id }}">
                    <td class="text-center">{{ $row->id }}</td>
                    <td>{{ $row->page }}</td>
                    <td>
                        <a class="btn btn-default btn-rounded btn-sm" href="{{ url('controll/meta/'.$row->id.'/edit') }}" ><span class="fa fa-pencil"></span></a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {!! $rows->render() !!}
    </div>
</div>
@stop