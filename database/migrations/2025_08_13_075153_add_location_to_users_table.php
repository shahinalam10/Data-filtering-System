<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void {
        Schema::table('users', function (Blueprint $table) {
            $table->unsignedBigInteger('division_id')->nullable()->after('id');
            $table->unsignedBigInteger('district_id')->nullable()->after('division_id');
            $table->unsignedBigInteger('thana_id')->nullable()->after('district_id');

            $table->foreign('division_id')->references('id')->on('divisions')->onDelete('set null');
            $table->foreign('district_id')->references('id')->on('districts')->onDelete('set null');
            $table->foreign('thana_id')->references('id')->on('thanas')->onDelete('set null');
        });
    }

    public function down(): void {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign(['division_id']);
            $table->dropForeign(['district_id']);
            $table->dropForeign(['thana_id']);
            $table->dropColumn(['division_id', 'district_id', 'thana_id']);
        });
    }
};

