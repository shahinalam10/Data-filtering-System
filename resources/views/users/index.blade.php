<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Filtering</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container py-4">
    <h2 class="mb-4">User Filtering</h2>

    <form method="GET" action="{{ route('users.index') }}" class="row g-3 bg-white p-3 rounded shadow-sm">
        <div class="col-md-2">
            <input type="text" name="name" class="form-control" placeholder="Name" value="{{ request('name') }}">
        </div>
        <div class="col-md-2">
            <input type="number" name="start_age" class="form-control" placeholder="Start Age" value="{{ request('start_age') }}">
        </div>
        <div class="col-md-2">
            <input type="number" name="end_age" class="form-control" placeholder="End Age" value="{{ request('end_age') }}">
        </div>
        <div class="col-md-2">
            <select name="division_id" id="division" class="form-select">
                <option value="">--All Divisions--</option>
                @foreach($divisions as $division)
                    <option value="{{ $division->id }}" {{ request('division_id') == $division->id ? 'selected' : '' }}>
                        {{ $division->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="col-md-2">
            <select name="district_id" id="district" class="form-select">
                <option value="">--All Districts--</option>
                @foreach($districts as $district)
                    <option value="{{ $district->id }}" {{ request('district_id') == $district->id ? 'selected' : '' }}>
                        {{ $district->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="col-md-2">
            <select name="thana_id" id="thana" class="form-select">
                <option value="">--All Thanas--</option>
                @foreach($thanas as $thana)
                    <option value="{{ $thana->id }}" {{ request('thana_id') == $thana->id ? 'selected' : '' }}>
                        {{ $thana->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="col-md-2">
            <button type="submit" class="btn btn-primary w-100">Filter</button>
        </div>
    </form>

    <div class="table-responsive mt-4 bg-white rounded shadow-sm p-3">
        <table class="table table-bordered table-striped align-middle">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Division</th>
                    <th>District</th>
                    <th>Thana</th>
                </tr>
            </thead>
            <tbody>
                @forelse($users as $user)
                    <tr>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->age }}</td>
                        <td>{{ $user->division->name ?? '-' }}</td>
                        <td>{{ $user->district->name ?? '-' }}</td>
                        <td>{{ $user->thana->name ?? '-' }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="5" class="text-center text-muted">No users found</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        
        <!-- Pagination Links -->
        <div class="d-flex justify-content-center">
            {{ $users->links('pagination::bootstrap-5') }}
        </div>

    </div>
</div>

<!-- jQuery & Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
$(document).ready(function(){

    // Division change -> load districts
    $('#division').on('change', function(){
        var division_id = $(this).val();
        $('#district').html('<option value="">--All Districts--</option>');
        $('#thana').html('<option value="">--All Thanas--</option>');

        if(division_id){
            $.ajax({
                url: "{{ url('/get-districts') }}/" + division_id,
                type: "GET",
                success: function(data){
                    $.each(data, function(key, district){
                        $('#district').append('<option value="'+ district.id +'">'+ district.name +'</option>');
                    });
                }
            });
        } else {
            // Load all districts if no division selected
            $.ajax({
                url: "{{ url('/get-all-districts') }}",
                type: "GET",
                success: function(data){
                    $.each(data, function(key, district){
                        $('#district').append('<option value="'+ district.id +'">'+ district.name +'</option>');
                    });
                }
            });
        }
    });

    // District change -> load thanas
    $('#district').on('change', function(){
        var district_id = $(this).val();
        $('#thana').html('<option value="">--All Thanas--</option>');

        if(district_id){
            $.ajax({
                url: "{{ url('/get-thanas') }}/" + district_id,
                type: "GET",
                success: function(data){
                    $.each(data, function(key, thana){
                        $('#thana').append('<option value="'+ thana.id +'">'+ thana.name +'</option>');
                    });
                }
            });
        } else {
            // Load all thanas if no district selected
            $.ajax({
                url: "{{ url('/get-all-thanas') }}",
                type: "GET",
                success: function(data){
                    $.each(data, function(key, thana){
                        $('#thana').append('<option value="'+ thana.id +'">'+ thana.name +'</option>');
                    });
                }
            });
        }
    });

});
</script>
</body>
</html>
