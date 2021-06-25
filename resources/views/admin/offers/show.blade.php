@extends('admin.dashboard')
@section('content')
<div class="col s6">
            <div class="card invoices-card">
                <div class="card-content">
                    <span class="card-title">{{ $row->title }} Details</span>
                    <table class="responsive-table bordered">
                        <thead>
                            <tr>
                                <th data-field="company">Properity Name</th>
                             </tr>
                        </thead>
                        <tbody class="data">
                            @include('admin.offers.items')
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
@stop
